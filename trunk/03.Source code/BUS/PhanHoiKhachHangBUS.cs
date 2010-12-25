using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class PhanHoiKhachHangBUS
    {
        public PhanHoiKhachHangDAO PhanHoiKHDAO = new PhanHoiKhachHangDAO();
        public void ThemPhanHoiKhachHang(PHAN_HOI_KHACH_HANG PhanHoiKhachHangDTO)
        {
           PhanHoiKHDAO.ThemPhanHoiKhachHang(PhanHoiKhachHangDTO);
        }
    }
}
