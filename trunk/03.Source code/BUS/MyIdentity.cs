using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Principal;
using DAO;
using DTO;

namespace BUS
{
    [Serializable]
    public class MyIdentity : IIdentity
    {
        # region private variables

        private String userId;
        private int userPK;
        private bool login;
        private string fullName;
        private string userEmail;
        private string roles;

        #endregion

        # region constructors
        /// <summary>
        /// The default constructor initializes any fields to their default values.
        /// </summary>
        public MyIdentity()
        {
            this.userPK = 0;
            this.userId = String.Empty;
            this.login = false;
            this.fullName = String.Empty;
            this.userEmail = String.Empty;
            this.roles = String.Empty;
        }

        /// <summary>
        /// Initializes a new instance of the MyIdentity class 
        /// with the passed parameters
        /// </summary>
        /// <param name="uId">User ID of the user</param>
        /// <param name="upk">Primary Key of the User record in User table</param>
        /// <param name="islogin">Flag that indicates whether the user has been authenticated</param>
        /// <param name="isAdmin">Flag that indicates whether the user is an Administrator</param>
        /// <param name="userName">Full name of the User</param>
        /// <param name="email">Email of the User</param>
        public MyIdentity(string uId, int upk, bool islogin, string userName, string email, string uRoles)
        {
            this.userPK = upk;
            this.userId = uId;
            this.login = islogin;
            this.fullName = userName;
            this.userEmail = email;
            this.roles = uRoles;
        }

        #endregion

        # region properties
        // Properties
        /// <summary>
        /// Gets the Authentication Type
        /// </summary>
        public string AuthenticationType
        {
            get { return "Custom"; }
        }

        /// <summary>
        /// Indicates whether the User is authenticated
        /// </summary>
        public bool IsAuthenticated
        {
            get { return login; }
            set { login = value; }
        }

        /// <summary>
        /// Gets or sets the UserID of the User
        /// </summary>
        public string Name
        {
            get { return userId; }
            set { userId = value; }
        }

        /// <summary>
        /// Gets or sets the Primary Key for the User record
        /// </summary>
        public int UserPK
        {
            get { return userPK; }
            set { userPK = value; }
        }


        /// <summary>
        /// Gets or sets the Full Name of the User
        /// </summary>
        public string UserFullName
        {
            get { return fullName; }
            set { fullName = value; }
        }

        /// <summary>
        /// Gets or sets the Email of the User
        /// </summary>
        public string UserEmail
        {
            get { return userEmail; }
            set { userEmail = value; }
        }

        /// <summary>
        /// Gets or sets the Roles of the User
        /// The roles are stored in a pipe "|" separated string
        /// </summary>
        public string UserRoles
        {
            get { return roles; }
            set { roles = value; }
        }

        #endregion
    }
}
