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
namespace PTUDW_CTLH_C1.WUC.ChuyenXe
{
    public partial class ThongKeChuyen : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                chedo = 1;
            }
        }

        protected void btTimKiem_Click(object sender, EventArgs e)
        {
            try
            {
                if (chedo == 1)
                {
                    int Nam = 2010;
                    Int32.TryParse(txtNam.Text, out Nam);
                    TuyenXeBUS tuyenXe = new TuyenXeBUS();
                    dgvThongKeTuyen.DataSource = tuyenXe.SelectSoLuongChuyenTheoTuyenByNam(Nam);
                }
                else if (chedo == 2)
                {
                    int nam = 2010;
                    Int32.TryParse(txtNam_Quy.Text, out nam);

                    int chonQuy;
                    chonQuy = int.Parse(ddlQuy.SelectedValue.ToString());
                    int thangBatDau = 0;
                    int thangKetThuc = 0;

                    switch (chonQuy)
                    {
                        case 1:
                            thangBatDau = 1;
                            thangKetThuc = 3;
                            break;
                        case 2:
                            thangBatDau = 4;
                            thangKetThuc = 6;
                            break;
                        case 3:
                            thangBatDau = 7;
                            thangKetThuc = 9;
                            break;
                        case 4:
                            thangBatDau = 10;
                            thangKetThuc = 12;
                            break;
                    }
                    TuyenXeBUS tuyenXe = new TuyenXeBUS();
                    dgvThongKeTuyen.DataSource = tuyenXe.SelectSoChuyenXeAndHanhKhachCuaTuyenByQuy(nam, thangBatDau, thangKetThuc);

                }
                else if (chedo == 3)
                {
                    int thang = int.Parse(ddlThang.SelectedValue);
                    int nam = 2010;
                    Int32.TryParse(txtNam_Thang.Text, out nam);
                    TuyenXeBUS tuyenXe = new TuyenXeBUS();
                    dgvThongKeTuyen.DataSource = tuyenXe.SelectSoChuyenXeAndKhachHangCuaTuyenByThang(nam, thang);

                }
                dgvThongKeTuyen.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
       public static int chedo;
        protected void ddlCheDoChon_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                dgvThongKeTuyen.DataBind();
                if (ddlCheDoChon.SelectedValue.Equals("Năm"))
                {
                    pnlNam_Thang.Visible = false;
                    pnlNam_Quy.Visible = false;
                    pnlNam.Visible = true;
                    chedo = 1;
                }
                else if (ddlCheDoChon.SelectedValue.Equals("Qúy"))
                {

                    pnlNam_Quy.Visible = true;
                    pnlNam.Visible = false;
                    pnlNam_Thang.Visible = false;
                    chedo = 2;
                }
                else if (ddlCheDoChon.SelectedValue.Equals("Tháng"))
                {
                    pnlNam.Visible = false;
                    pnlNam_Quy.Visible = false;
                    pnlNam_Thang.Visible = true;
                    chedo = 3;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}