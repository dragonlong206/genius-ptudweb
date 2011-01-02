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

namespace PTUDW_CTLH_C1.WUC.ChuyenXe
{
    public partial class wucChiTietChuyen : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.dvChiTietChuyenXe.Rows[7].Visible = false; 
  
            if ((int)Session["IsLogin"] == 1)
            {
                if ((int)Session["MaLoaiNhanVien"] == 2)
                {
                    this.dvChiTietChuyenXe.Rows[7].Visible = true;
                }
            }
        }
    }
}