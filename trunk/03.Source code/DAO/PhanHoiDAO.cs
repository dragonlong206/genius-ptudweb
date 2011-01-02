using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;
using DTO;

namespace DAO
{
    public class PhanHoiDAO
    {
        public void DuyetPhanHoi(int iMaPhanHoiKhachHang, int iMaTinhTrang)
        {
            try
            {
                CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
                db.usp_UpdateTinhTrangPhanHoi(iMaPhanHoiKhachHang, iMaTinhTrang);

                //TODO: Thêm dữ liệu vào bảng phản hồi
                //db.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void CapNhatTinhTrangPhanHoiDaDoc(int MaPhanHoi)
        {
            try
            {
                CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
                db.usp_UpdatePHAN_HOI_DA_XEM(MaPhanHoi);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public usp_SelectPHAN_HOIs_DemPhanHoiChuaDocCuaTaiXeResult DemPhanHoiChuaDoc(int MaTaiXe)
        {
            try
            {
                CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
                return db.usp_SelectPHAN_HOIs_DemPhanHoiChuaDocCuaTaiXe(MaTaiXe).Single();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void ThemPhanHoiDaDuyet(int iMaTaiXe, int iMaPhanHoiKhach, int iMaNhanVienDuyet)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            PHAN_HOI PhanHoi = new PHAN_HOI();
            PhanHoi.MaPhanHoiKhach = iMaPhanHoiKhach;
            PhanHoi.MaNhanVienDuyet = iMaNhanVienDuyet;
            PhanHoi.MaTaiXe = iMaTaiXe;
            PhanHoi.TinhTrangDoc = 1;
            db.PHAN_HOIs.InsertOnSubmit(PhanHoi);

            db.SubmitChanges();
        }
    }
}
