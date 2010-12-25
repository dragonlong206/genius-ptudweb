using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class PhanHoiKhachHangDAO
    {
        public void ThemPhanHoiKhachHang(PHAN_HOI_KHACH_HANG PhanHoiKhachHangDTO)
        {
            int? maphanhoi = 0;
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            db.usp_InsertPHAN_HOI_KHACH_HANG(PhanHoiKhachHangDTO.NoiDung, 
                                            PhanHoiKhachHangDTO.NgayDang, 
                                            ref maphanhoi);
        }
    }
}
