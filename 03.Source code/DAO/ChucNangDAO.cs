using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class ChucNangDAO
    {
        CongTyLuHanhDataContext _context = new CongTyLuHanhDataContext();

        //Lấy tất cả chức năng của hệ thống
        public List<CHUC_NANG> LayDanhSachChucNang()
        {            
            var KetQua = from cn in _context.CHUC_NANGs
                         select cn;

            return KetQua.ToList();
        }

        public List<CHUC_NANG> LayDanhSachChucNang(int maLoaiNhanVien)
        {
            List<Int32> danhSachMaChucNang = new PhanQuyenDAO().LayDanhSachMaChucNang(maLoaiNhanVien);

            return (from cn in _context.CHUC_NANGs
                    where danhSachMaChucNang.Contains(cn.MaChucNang)
                    select cn).ToList();
        }

        public CHUC_NANG LayChucNang(int MaChucNang)
        {
            return (from cn in _context.CHUC_NANGs
                    where cn.MaChucNang == MaChucNang
                    select cn).Single();
        }
    }
}
