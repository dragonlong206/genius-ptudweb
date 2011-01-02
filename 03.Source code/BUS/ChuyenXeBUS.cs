using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAO;

namespace BUS
{
   public  class ChuyenXeBUS
    {
       public  List<usp_SelectChuyenXesByMaTramDiAndsMaTramDenResult> SelectChuyenXeByMaTramDiVaMaTramDen(int iMaTramDi, int iMaTramDen, DateTime dtNgayKhoiHanh, int iGioKhoiHanh, int iGioDen)
       {
           ChuyenXeDAO chuyenXe = new ChuyenXeDAO();
           return chuyenXe.SelectChuyenXeByMaTramDiVaMaTramDen(iMaTramDi, iMaTramDen, dtNgayKhoiHanh, iGioKhoiHanh, iGioDen);
       }
       //public List<usp_SelectChiTietChuyenByMaChuyenXeResult> SelectChiTietChuyenXeByMaChuyenXe(int maChuyenXe)
       //{
       //    ChuyenXeDAO chuyenXe = new ChuyenXeDAO();
       //    return chuyenXe.SelectChiTietChuyenXeByMaChuyenXe(maChuyenXe);

       public List<usp_SelectChuyenALLByMaNhanVienAndNgayKhoiHanhResult> SelectChuyenALLByMaNhanVienAndNgayKhoiHanhResult(int MaNhanVien, DateTime NgayKhoiHanh)
       {
           ChuyenXeDAO chuyenxe = new ChuyenXeDAO();
           return chuyenxe.SelectChuyenALLByMaNhanVienAndNgayKhoiHanhResult(MaNhanVien, NgayKhoiHanh);
       }

       public List<usp_SelectCHUYEN_XEsKeTiepResult> XemDanhSachChuyenKeTiep(int MaNhanVien)
       {
           ChuyenXeDAO ChuyenXe = new ChuyenXeDAO();
           return ChuyenXe.XemDanhSachChuyenKeTiep(MaNhanVien);
       }

       public List<usp_SelectCHUYEN_XEsByMaNhanVienAndThangResult> XemChuyenDaChayTheoThang(int MaNhanVien, int Thang, int Nam)
       {
           ChuyenXeDAO ChuyenXe = new ChuyenXeDAO();
           return ChuyenXe.XemChuyenDaChayTheoThang(MaNhanVien, Thang, Nam);
       }
       public double TongLuongTrongThang(int MaNhanVien, int Thang, int Nam)
       {
           ChuyenXeDAO Chuyenxe = new ChuyenXeDAO();
           return Chuyenxe.TongLuongTrongThang(MaNhanVien, Thang, Nam);
       }

       public List<CHUYEN_XE> LayDanhSachChuyenXe(List<Int32> danhSachTuyen)
       {
           ChuyenXeDAO chuyenXe = new ChuyenXeDAO();
           return chuyenXe.LayDanhSachChuyenXe(danhSachTuyen);
       }

       public void CapNhatChuyen(int MaChuyen, int MaXe)
       {
           ChuyenXeDAO chuyenXe = new ChuyenXeDAO();
           chuyenXe.CapNhatChuyen(MaChuyen, MaXe);
       }

       public bool KiemTraXeCoThePhanCong(int iMaXe, int iMaChuyenXe)
       {
           CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
           var ChuyenXe = (from Chuyen in db.CHUYEN_XEs
                          where Chuyen.MaChuyenXe == iMaChuyenXe
                          select Chuyen).Single();
           ChuyenXeDAO chuyenXe = new ChuyenXeDAO();
           return chuyenXe.KiemTraXeCoThePhanCong(iMaChuyenXe, ChuyenXe);
       }
       public List<usp_SelectChuyenByMaTramGiaVaThoiGianKhoiHanhResult> SelectChuyenByMaTramGiaVaThoiGianKhoiHanh(int maTram, int maTramDen, int gia, DateTime thoiGianKhoiHanh)
       {
           ChuyenXeDAO chuyen = new ChuyenXeDAO();
           return chuyen.SelectChuyenByMaTramGiaVaThoiGianKhoiHanh(maTram, maTramDen, gia, thoiGianKhoiHanh);
       }
    }
    
}
