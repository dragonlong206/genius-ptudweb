using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
                db.SubmitChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
