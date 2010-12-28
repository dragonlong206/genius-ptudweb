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
            return LayMaNhanVien(userName, encPasaword);
        }

        //test password
        public int KiemTraPassword(int maTaiKhoan, String encPassword)
        {
            return -1;
        }

        /// <summary>
        /// Đăng nhập
        /// </summary>
        /// <param name="userName"></param>
        /// <param name="encMatKhau"></param>
        /// <returns>tồn tại nhân viên: true, ngược lại: false</returns>
        public bool DangNhap(String userName, String encMatKhau)
        {
            if (LayMaNhanVien(userName, encMatKhau) != -1)
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Lấy mã nhân viên theo mã tài khoản
        /// </summary>
        /// <param name="MaTaiKhoan">mã tài khoản</param>
        /// <returns>mã nhân viên, -1 nếu ko tìm thấy mã nhân viên nào</returns>
        public int LayMaNhanVien(int MaTaiKhoan)
        {
            var KetQua = (from tk in _context.TAI_KHOANs
                   where tk.MaTaiKhoan == MaTaiKhoan
                   select tk.MaNhanVien.Value).ToList();

            if (KetQua.Count > 0)
            {
                return KetQua[0];
            }
            return -1;

        }

        public TAI_KHOAN LayTaiKhoan(int MaTaiKhoan)
        {
            return (from tk in _context.TAI_KHOANs
                    where tk.MaTaiKhoan == MaTaiKhoan
                    select tk).Single();
        }

        /// <summary>
        /// Lấy mã nhân viên
        /// </summary>
        /// <param name="userName">tên đăng nhập</param>
        /// <param name="password">mật khẩu</param>
        /// <returns>mã nhân viên, -1 nếu không tìm thấy</returns>
        public int LayMaNhanVien(string userName, string password)
        {
            var KetQua = (from tk in _context.TAI_KHOANs
                            where (tk.Username == userName && tk.Password == password)
                            select tk.MaNhanVien.Value).ToList();


            if (KetQua.Count > 0)
            {
                return KetQua[0];
            }

            return -1;
        }
        public int LayMaTaiKhoan(string username)
        {
            var KetQua = (from tk in _context.TAI_KHOANs
                          where (tk.Username == username)
                          select tk.MaTaiKhoan).ToList();
            if (KetQua.Count > 0)
            {
                return KetQua[0];
            }
            return -1;
        }

        public string LayMatKhauTheoMaTaiKhoan(int MaTaiKhoan)
        {
            var KetQua = (from tk in _context.TAI_KHOANs
                          where (tk.MaTaiKhoan == MaTaiKhoan)
                          select tk.Password).ToList();
            if (KetQua.Count > 0)
            {
                return KetQua[0];
            }
            return "";
        }
        public bool KiemTraTonTaiEmail(string Email)
        {
            bool KiemTra = false;
            var TaiKhoan = from tk in _context.TAI_KHOANs where tk.Email == Email select tk;
            if (TaiKhoan != null)
            {
                return true;
            }
            return KiemTra;
        }

        public bool DoiMatKhau(int MaTaiKhoan, string passwordMoi)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            db.usp_UpdateTAI_KHOAN_MAT_KHAU(MaTaiKhoan, passwordMoi);
            return false;
        }

        public TAI_KHOAN LayThongTinTaiKhoanTheoMaTaiKhoan(int MaTaiKhoan)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            var tk = db.usp_SelectTAI_KHOAN(MaTaiKhoan);
            return (TAI_KHOAN)tk;
        }
    }
}
