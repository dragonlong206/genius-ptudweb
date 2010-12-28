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
using System.Security.Cryptography;
using System.Xml.Linq;
using System.Web.Mail;
using System.Globalization;
using System.IO;
using System.Text;
using BUS;

namespace PTUDW_CTLH_C1.WUC.MatKhau
{
    public partial class wuQuenMatKhauc : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            TaiKhoanBUS TaiKhoanBUS = new TaiKhoanBUS();
            bool KiemTraEmail = TaiKhoanBUS.KiemTraTonTaiEmail(email);
            if (KiemTraEmail == false)
            {
                rfvEmail.ErrorMessage = "Email không tồn tại";
            }
            GuiMatKhau("ngocnhi07.khtn@gmail.com");
        }

        protected void GuiMatKhau(string Email)
        {
            MailMessage message = new MailMessage();
            message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserver", "smtp.gmail.com");
            message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", "465");
            message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", "2");
            message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
            //Use 0 for anonymous
            message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "ngocnhi07.khtn@gmail.com");
            message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "123456987");
            message.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", "true");
            message.From = "ngocnhi07.khtn@gmail.com";
            message.To = Email;
            message.Subject = "Mật khẩu mới tại công ty lữ hành Genius";
            message.BodyFormat = MailFormat.Text;
            message.BodyEncoding = Encoding.UTF8;
            message.Body = "hehe";
            SmtpMail.SmtpServer = "smtp.gmail.com:465";
            SmtpMail.Send(message);
        }
    }
}