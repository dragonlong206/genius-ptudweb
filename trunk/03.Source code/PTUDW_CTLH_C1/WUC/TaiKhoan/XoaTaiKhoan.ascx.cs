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

namespace PTUDW_CTLH_C1.WUC.TaiKhoan
{
    public partial class XoaTaiKhoan : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                
            
        }

        protected void btTimKiem_Click(object sender, EventArgs e)
        {
            dgvThongTinTaiKhoan.DataBind();
            cbTaiKhoan.DataBind();
            
          
        }

        protected void dgvThongTinTaiKhoan_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            cbTaiKhoan.DataBind();
        }
    }
}