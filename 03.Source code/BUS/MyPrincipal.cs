using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Principal;
using System.Collections;
using System.Security.Cryptography;
using DAO;
using DTO;

namespace BUS
{
    [Serializable]
    public class MyPrincipal : IPrincipal
    {
        # region private variables

        private IIdentity identity;
        private ArrayList roles = new ArrayList();

        #endregion

        # region Constructor
        /// <summary>
        /// Initializes a new instance of the GenericPrincipal class 
        /// from a MyIdentity and an ArrayList of role names 
        /// to which the user represented by that MyIdentity belongs
        /// </summary>
        /// <param name="id"></param>
        /// <param name="rolesArray"></param>
        public MyPrincipal(IIdentity id, ArrayList rolesArray)
        {
            identity = id;
            roles = rolesArray;
        }

        public MyPrincipal(IIdentity id, List<String> rolesList)
        {
            identity = id;

            foreach (String str in rolesList)
            {
                roles.Add(str);
            }
        }
        #endregion

        # region Methods
        /// <summary>
        /// Determines whether the current CustomPrincipal belongs to the specified role.
        /// </summary>
        /// <param name="role">The name of the role for which to check membership</param>
        /// <returns>true if the current CustomPrincipal is a member of the specified role; 
        /// otherwise, false.</returns>
        public bool IsInRole(string role)
        {
            return roles.Contains(role);
        }

        #endregion

        # region Properties
        /// <summary>
        /// Gets the MyIdentity of the user represented by the current CustomPrincipal.
        /// </summary>
        public IIdentity Identity
        {
            get { return identity; }
            set { identity = value; }
        }
        #endregion
    }
}
