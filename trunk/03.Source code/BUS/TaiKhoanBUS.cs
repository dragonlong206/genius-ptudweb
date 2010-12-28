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
            return _taiKhoanDAO.DangNhap(userName, encMatKhau);
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
        public bool KiemTraTonTaiEmail(string Email)
        {
            return _taiKhoanDAO.KiemTraTonTaiEmail(Email);
        }

        public void DoiMatKhau(int MaTaiKhoan, string PasswordMoi)
        {
            _taiKhoanDAO.DoiMatKhau(MaTaiKhoan, PasswordMoi);
        }

        public int LayMaTaiKhoan(string username)
        {
            return _taiKhoanDAO.LayMaTaiKhoan(username);
        }

        public string LayMatKhauTheoMaTaiKhoan(int MaTaiKhoan)
        {
            return _taiKhoanDAO.LayMatKhauTheoMaTaiKhoan(MaTaiKhoan);
        }

        public TAI_KHOAN LayThongTinTaiKhoanTheoMaTaiKhoan(int MaTaiKhoan)
        {
            return _taiKhoanDAO.LayThongTinTaiKhoanTheoMaTaiKhoan(MaTaiKhoan);
        }
    }
}
