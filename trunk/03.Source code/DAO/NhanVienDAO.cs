using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;
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

        //Tìm tiếm nhân viên theo tên nhân viên
        public List<usp_SelectNHAN_VIENResult> TimKiemNhanVien(String HoTen)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_SelectNHAN_VIENResult> dsNhanVien = db.usp_SelectNHAN_VIEN(HoTen);
            return dsNhanVien.ToList();
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
            var KetQua = (from nv in _context.NHAN_VIENs
                   where nv.MaNhanVien == maNhanVien
                   select nv.LoaiNhanVien.Value).ToList();

            if (KetQua.Count > 0)
            {
                return KetQua[0];
            }
            return -1;
        }

        //Lay ten nhan vien
        public String LayTenNhanVien(int maNhanVien)
        {
            var KetQua = (from nv in _context.NHAN_VIENs
                          where nv.MaNhanVien == maNhanVien
                          select nv.HoTen).Single();

            if (KetQua != null)
            {
                return KetQua;
            }

            return null;
        }

        public List<usp_SelectTaiXesAllResult> SelectTaiXesAll()
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            return db.usp_SelectTaiXesAll().ToList();
        }
        public NHAN_VIEN LayThongTinNhanVienTheoMaNhanVien(int MaNhanVien)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            NHAN_VIEN NhanVien = (from nv in db.NHAN_VIENs
                                  where (nv.MaNhanVien == MaNhanVien)
                                  select nv).Single();
            return NhanVien;
        }

        public void CapNhatThongTin(NHAN_VIEN nv)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            db.usp_UpdateNHAN_VIEN(nv.MaNhanVien, nv.HoTen, nv.DienThoai, nv.DiaChi);

        }

        public List<NHAN_VIEN> LayDSTaiXeChuaPhanCong()
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            var KQ = from nv in db.NHAN_VIENs where (!(from xe in db.XEs select xe.MaTaiXe).Contains(nv.MaNhanVien) && nv.LoaiNhanVien==1) select nv;
            return KQ.ToList() ;
        }

        public List<usp_SelectNhanVienLaDieuHanhTramResult> SelectNhanVienLaDieuHanhTramResult()
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            return db.usp_SelectNhanVienLaDieuHanhTram().ToList();
        }
    }
}
