using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class TaiKhoanDAO
    {
        CongTyLuHanhDataContext _context = new CongTyLuHanhDataContext();

        // Kiểm tra đăng nhập theo tên đăng nhập và mật khẩu đã mã hóa
        public int KiemTraDangNhap(String userName, String encPasaword)
        {
            return -1;
        }

        //test password
        public int KiemTraPassword(int maTaiKhoan, String encPassword)
        {
            return -1;
        }

        public bool DangNhap(String userName, String encMatKhau)
        {
            int MaNhanVien = KiemTraDangNhap(userName, encMatKhau);

            //code chua xong

            return false;
        }

        public int LayMaNhanVien(int MaTaiKhoan)
        {
            return (from tk in _context.TAI_KHOANs
                   where tk.MaTaiKhoan == MaTaiKhoan
                   select tk.MaNhanVien.Value).Single();
        }

        public TAI_KHOAN LayTaiKhoan(int MaTaiKhoan)
        {
            return (from tk in _context.TAI_KHOANs
                    where tk.MaTaiKhoan == MaTaiKhoan
                    select tk).Single();
        }

        public int LayMaNhanVien(string userName, string password)
        {
            return (from tk in _context.TAI_KHOANs
                    where (tk.Username == userName && tk.Password == password)
                    select tk.MaNhanVien.Value).Single();
        }
    }
}
