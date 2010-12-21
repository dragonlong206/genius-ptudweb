using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using System.Collections;

namespace DAO
{
    public class LoaiNhanVienDAO
    {
        CongTyLuHanhDataContext _context = new CongTyLuHanhDataContext();

        public List<LOAI_NHAN_VIEN> LayLoaiNhanVien()
        {
            return (from lnv in _context.LOAI_NHAN_VIENs select lnv).ToList();
        }

        public List<LOAI_NHAN_VIEN> LayLoaiNhanVien(int MaNhanVien)
        {
            return (from nv in _context.NHAN_VIENs
                    join lnv in _context.LOAI_NHAN_VIENs on nv.MaNhanVien equals lnv.MaLoaiNhanVien
                    select lnv).ToList();
        }

        public List<String> LayTenLoaiNhanVien(int MaLoaiNhanVien)
        {
            return (from lnv in _context.LOAI_NHAN_VIENs
                    where lnv.MaLoaiNhanVien == MaLoaiNhanVien
                    select lnv.TenLoai).ToList();
        }
    }
}
