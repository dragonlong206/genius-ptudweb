using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTUDW_CTLH_C1
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Công ty xe khách lữ hành Genius";
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            string SelectedTheme = (string)Session["SelectedTheme"];
            if (SelectedTheme == null)
            {
                Session.Add("SelectedTheme", "MainTheme");
                Page.Theme = "MainTheme";
            }
            else
            {
                Page.Theme = SelectedTheme;
                Master.SelectedTheme = SelectedTheme;
            }
        }
    }
}
