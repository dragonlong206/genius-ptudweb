using System;
using System.Collections;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Text;
using System.Web;


namespace BUS
{
    /// <summary>
    /// Provides static methods that supply helper utilities for authenticating identites. 
    /// This class cannot be inherited.
    /// </summary>
    public sealed class MyAuthentication
    {
        const string LOGINURL_KEY = "CustomAuthentication.LoginUrl";
        const string AUTHENTICATION_COOKIE_KEY = "CustomAuthentication.Cookie.Name";
        const string AUTHENTICATION_COOKIE_EXPIRATION_KEY = "CustomAuthentication.Cookie.Timeout";

        #region static methods
        /// <summary>
        /// Produces a string containing an encrypted string for an authenticated User Identity
        /// suitable for use in an HTTP cookie given a MyIdentity
        /// </summary>
        /// <param name="identity">MyIdentity class for the authenticated user</param>
        /// <returns>Encrypted string</returns>
        public static string Encrypt(MyIdentity identity)
        {
            string encryptedString = String.Empty;
            try
            {
                StringBuilder en_str = new StringBuilder();
                Type t_Identity = identity.GetType();
                PropertyInfo[] propertyInfo = t_Identity.GetProperties();
                foreach (PropertyInfo property in propertyInfo)
                {
                    en_str.Append(property.GetValue(identity, null));
                    en_str.Append("|$|");
                }

                encryptedString = MyEncryption.Encrypt(en_str.ToString());
            }
            catch (Exception e)
            {
                string str = e.Message;
                throw;
            }
            return encryptedString;
        }

        /// <summary>
        /// Returns an instance of a MyIdentity class, 
        /// given an encrypted authentication string obtained from an HTTP cookie.
        /// </summary>
        /// <param name="encryptedInput">Encrypted string conataining User Identity</param>
        /// <returns>MyIdentity object</returns>
        public static MyIdentity Decrypt(string encryptedInput)
        {
            MyIdentity identity = null;
            try
            {
                string decryptedString = MyEncryption.Decrypt(encryptedInput);
                //string[] userProperties = decryptedString.Split(new char[] {'|'});
                ArrayList userProperties = new ArrayList();
                Split("|$|", decryptedString, userProperties);
                if (userProperties != null && userProperties.Count > 0)
                {
                    identity = new MyIdentity();
                    Type t_identity = identity.GetType();
                    PropertyInfo[] propertyInfo = t_identity.GetProperties();
                    for (int i = 0; i < propertyInfo.Length; i++)
                    {
                        PropertyInfo property = propertyInfo[i];
                        if (property.CanWrite)
                        {
                            string propertyValue = userProperties[i].ToString();
                            object objValue = Convert.ChangeType(propertyValue, property.PropertyType);
                            property.SetValue(identity, objValue, null);
                        }
                    }
                }
            }
            catch (Exception e)
            {
                string str = e.Message;
                throw;
            }
            return identity;
        }

        /// <summary>
        /// Redirects an authenticated user back to the originally requested URL.
        /// </summary>
        /// <param name="identity">MyIdentity of an authenticated user</param>
        public static void RedirectFromLoginPage(MyIdentity identity)
        {
            string cookieName = ConfigurationSettings.AppSettings[AUTHENTICATION_COOKIE_KEY];
            if (cookieName == null || cookieName.Trim() == String.Empty)
            {
                throw new Exception(" CustomAuthentication.Cookie.Name entry not found in appSettings section section of Web.config");
            }

            string cookieExpr = ConfigurationSettings.AppSettings[AUTHENTICATION_COOKIE_EXPIRATION_KEY];

            HttpRequest request = HttpContext.Current.Request;
            HttpResponse response = HttpContext.Current.Response;

            string encryptedUserDetails = Encrypt(identity);

            HttpCookie userCookie = new HttpCookie(cookieName.ToUpper(), encryptedUserDetails);
            if (cookieExpr != null && cookieExpr.Trim() != String.Empty)
            {
                userCookie.Expires = DateTime.Now.AddMinutes(int.Parse(cookieExpr));
            }
            response.Cookies.Add(userCookie);

            string returnUrl = request["ReturnUrl"];
            if (returnUrl != null && returnUrl.Trim() != String.Empty)
            {
                response.Redirect(returnUrl, false);
            }
            else
            {
                response.Redirect("~/Detail.aspx", false);
            }
        }

        #endregion

        #region private methods
        private object GetConvertedValue(string propertyValue, string propertyType)
        {
            Type argType = Type.GetType(propertyType);
            Object obj = new Object();
            if (argType == Type.GetType("System.String"))
            {
                obj = propertyValue.Trim();  // returning Primitive object
            }
            else
            {
                obj = Activator.CreateInstance(argType);  // creating an object of ArgumentType 
                obj = argType.InvokeMember("Parse", BindingFlags.Default | BindingFlags.InvokeMethod, null, obj, new object[] { propertyValue.Trim() });
            }

            return obj;
        }

        /// <summary>
        /// Used to split a string into an string array based on a separator
        /// </summary>
        /// <param name="seperator"></param>
        /// <param name="str"></param>
        /// <param name="strArray"></param>
        private static void Split(string seperator, string str, ArrayList strArray)
        {
            try
            {
                int start = 0, end = 0;
                end = str.IndexOf(seperator);
                if (end <= -1)
                {
                    end = str.Length;
                    strArray.Add(str.Substring(start, end - start));
                    return;
                }
                strArray.Add(str.Substring(start, end - start));

                start = end + seperator.Length;
                end = str.Length;

                Split(seperator, str.Substring(start, end - start), strArray);
            }
            catch (Exception ex)
            {
                throw (ex);
            }
        }

        #endregion

        #region Properties
        /// <summary>
        /// Returns the configured cookie name used for the current application
        /// </summary>
        public string CookieName
        {
            get
            {
                string cookieName = ConfigurationSettings.AppSettings[AUTHENTICATION_COOKIE_KEY];
                if (cookieName == null || cookieName.Trim() == String.Empty)
                {
                    throw new Exception(" CustomAuthentication.Cookie.Name entry not found in appSettings section section of Web.config");
                }
                return cookieName;
            }
        }
        #endregion
    }
}
