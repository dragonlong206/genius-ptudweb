using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;
using DAO;
using DTO;

namespace BUS
{
    public class LoaiNhanVienBUS
    {
        LoaiNhanVienDAO _loaiNhanVienDAO = new LoaiNhanVienDAO();

        public List<LOAI_NHAN_VIEN> LayLoaiNhanVien()
        {
            return _loaiNhanVienDAO.LayLoaiNhanVien();
        }

        public List<LOAI_NHAN_VIEN> LayLoaiNhanVien(int MaNhanVien)
        {
            return _loaiNhanVienDAO.LayLoaiNhanVien(MaNhanVien);
        }

        //public List<String> LayTenLoaiNhanVien(int MaLoaiNhanVien)
        //{
        //    return _loaiNhanVienDAO.LayTenLoaiNhanVien(MaLoaiNhanVien);
        //}

        public String LayTenLoaiNhanVien(int MaLoaiNhanVien)
        {
            return _loaiNhanVienDAO.LayTenLoaiNhanVien(MaLoaiNhanVien);
        }
    }
}
