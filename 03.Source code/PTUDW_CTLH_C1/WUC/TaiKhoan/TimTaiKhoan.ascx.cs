﻿using System;
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
    public partial class TimTaiKhoan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["IsLogin"] == 0 || (int)Session["MaLoaiNhanVien"] != 1)
            {
                Response.Redirect("~/Default.aspx?showMessage=true");
            }
        }

        protected void btTimKiem_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           /* if (((TextBox)GridView1.FindControl("password")).Text.Length > 0)
            {
                ((TextBox)GridView1.FindControl("password")).Text = MyEncryption.Encrypt(((TextBox)GridView1.FindControl("password")).Text);
            }
            */
        }
    }
}