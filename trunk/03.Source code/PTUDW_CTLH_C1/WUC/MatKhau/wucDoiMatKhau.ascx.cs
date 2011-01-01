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
using DTO;
using BUS;

namespace PTUDW_CTLH_C1.WUC.MatKhau
{
    public partial class wucDoiMatKhau : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* int MaTaiKhoan = (int)Session["MaTaiKhoan"];
            lblTaiKhoan.Text = MaTaiKhoan.ToString();*/
            if (!IsPostBack)
            {
                if (Session["IsLogin"] != null)
                {
                    // this.Visible = false;
                }
            }            
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            TaiKhoanBUS TaiKhoanBUS = new TaiKhoanBUS();
            String strMatKhauCu = txtMatKhauCu.Text;
            int MaTaiKhoan = (int)Session["MaTaiKhoan"];
           // int MaTaiKhoan = 2;
            strMatKhauCu = MyEncryption.Encrypt(strMatKhauCu);
            string password = TaiKhoanBUS.LayMatKhauTheoMaTaiKhoan(MaTaiKhoan);
                if (password == strMatKhauCu)
                {
                    String strMatKhauMoi = txtMatKhauMoi.Text;
                    String strConfirmMatKhau = txtConfirmMatKhau.Text;
                    if (strMatKhauMoi == strConfirmMatKhau)
                    {
                        strConfirmMatKhau = MyEncryption.Encrypt(strConfirmMatKhau);
                        TaiKhoanBUS.DoiMatKhau(MaTaiKhoan,strConfirmMatKhau);
                    }
                }
        }
    }
}