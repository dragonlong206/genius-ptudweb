using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using BUS;

namespace PTUDW_CTLH_C1.WUC.TaiKhoan
{
    public partial class ThemTaiKhoan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strTaiKhoan = ((TextBox)FormView1.FindControl("txtPassword")).Text;
            if (strTaiKhoan.Length > 0)
            {
                MyEncryption Encrypt = new MyEncryption();
                ((TextBox)FormView1.FindControl("txtPassword")).Text = MyEncryption.Encrypt(strTaiKhoan);
            }
        }

        

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if(e.CommandName.Equals("Cancel"))
            {
                pnlThemTaiKhoan.Visible=false;
            }
        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            Response.Write("<script>alert('Thêm thành công một tài khoản!')</script>");
        }        
    }
}