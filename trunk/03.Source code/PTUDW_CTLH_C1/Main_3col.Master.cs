using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTUDW_CTLH_C1
{
    public partial class Main_3col : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ddlThemes_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["SelectedTheme"] = this.ddlThemes.Text;
            Server.Transfer(Request.FilePath);
        }

        public string SelectedTheme
        {
            get
            {
                return this.ddlThemes.Text;
            }
            set
            {
                this.ddlThemes.Text = value;
            }
        }
    }
}
