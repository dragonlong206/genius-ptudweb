using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using System.Data.Linq;

namespace DAO
{
    public class ChuyenXeDAO
    {
        public  List<usp_SelectChuyenXesByMaTramDiAndsMaTramDenResult> SelectChuyenXeByMaTramDiVaMaTramDen(int iMaTramDi, int iMaTramDen, DateTime dtNgayKhoiHanh, int iGioKhoiHanh, int iGioDen)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_SelectChuyenXesByMaTramDiAndsMaTramDenResult> dsChuyenXe = db.usp_SelectChuyenXesByMaTramDiAndsMaTramDen(iMaTramDi, iMaTramDen, dtNgayKhoiHanh, iGioKhoiHanh, iGioDen);
            return dsChuyenXe.ToList();

            
        }

        //public List<usp_SelectChiTietChsuyenByMaChuyenXeResult> SelectChiTietChuyenXeByMaChuyenXe(int maChuyenXe)
        //{
        //    CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
        //    ISingleResult<usp_SelectChiTietChuyenByMaChuyenXeResult> dsChuyenXe = db.usp_SelectChiTietChuyenByMaChuyenXe(maChuyenXe);
        //    return dsChuyenXe.ToList();

        //}

        public List<usp_SelectChuyenALLByMaNhanVienAndNgayKhoiHanhResult> SelectChuyenALLByMaNhanVienAndNgayKhoiHanhResult(int MaNhanVien, DateTime NgayKhoiHanh)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_SelectChuyenALLByMaNhanVienAndNgayKhoiHanhResult>listchuyen= db.usp_SelectChuyenALLByMaNhanVienAndNgayKhoiHanh(MaNhanVien,NgayKhoiHanh);
            return listchuyen.ToList();
        }

        public List<usp_SelectCHUYEN_XEsKeTiepResult> XemDanhSachChuyenKeTiep(int MaNhanVien)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_SelectCHUYEN_XEsKeTiepResult> DanhSachChuyenKeTiep = db.usp_SelectCHUYEN_XEsKeTiep(MaNhanVien);
            return DanhSachChuyenKeTiep.ToList();
        }

        public List<usp_SelectCHUYEN_XEsByMaNhanVienAndThangResult> XemChuyenDaChayTheoThang(int MaNhanVien, int Thang, int Nam)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_SelectCHUYEN_XEsByMaNhanVienAndThangResult> dsChuyen = db.usp_SelectCHUYEN_XEsByMaNhanVienAndThang(MaNhanVien, Thang, Nam);
            return dsChuyen.ToList();
        }

        public double TongLuongTrongThang(int MaNhanVien, int Thang, int Nam)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_TongLuongTrongThangResult> kq = db.usp_TongLuongTrongThang(MaNhanVien, Thang, Nam);
            return (double)kq.Single().Luong;
        }

    }
}
