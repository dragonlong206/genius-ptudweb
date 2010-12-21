using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class NhanVienDAO
    {
        CongTyLuHanhDataContext _context = new CongTyLuHanhDataContext();

        //Thêm một nhân viên mới
        public void ThemNhanVienMoi(/*các tham số*/)
        {    
            
        }

        //Tìm tiếm nhân viên theo mã nhân viên
        public NHAN_VIEN TimKiemNhanVien(int maNhanVien)
        {
            return null;
        }

        //Tìm kiếm nhân viên theo địa chỉ email (Overload TimKiemNhanVien)
        public NHAN_VIEN TimKiemNhanVien(string email)
        {
            return null;    
        }

        //Cập nhật nhân viên
        public void CapNhatNhanVien(/*các tham số*/)
        {
        }

        //Xóa nhân viên
        public bool XoaNhanVien(int maNhanVien)
        {
            return false;
        }

        //Lấy loại nhân viên
        public int LayLoaiNhanVien(int maNhanVien)
        {
            return (from nv in _context.NHAN_VIENs
                   where nv.MaNhanVien == maNhanVien
                   select nv.LoaiNhanVien.Value).Single();
        }

    }
}
