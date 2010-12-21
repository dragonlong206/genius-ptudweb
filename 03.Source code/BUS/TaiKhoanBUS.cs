using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAO;

namespace BUS
{
    public class TaiKhoanBUS
    {
        TaiKhoanDAO _taiKhoanDAO = new TaiKhoanDAO();

        public int KiemTraDangNhap(String userName, String encPassword)
        {
            return _taiKhoanDAO.KiemTraDangNhap(userName, encPassword);
        }

        public bool DangNhap(String userName, String encMatKhau)
        {
            int MaNhanVien = KiemTraDangNhap(userName, encMatKhau);
            //code chua xong
            return false;
        }

        public int LayMaNhanVien(int MaTaiKhoan)
        {
            return _taiKhoanDAO.LayMaNhanVien(MaTaiKhoan);
        }

        public TAI_KHOAN LayTaiKhoan(int MaTaiKhoan)
        {
            return _taiKhoanDAO.LayTaiKhoan(MaTaiKhoan);
        }

        public int LayMaNhanVien(string userName, string password)
        {
            return _taiKhoanDAO.LayMaNhanVien(userName, password);
        }
    }
}
