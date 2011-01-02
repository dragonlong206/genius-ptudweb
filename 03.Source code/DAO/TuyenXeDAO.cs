using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;
using DTO;

namespace DAO
{
    public class TuyenXeDAO
    {
        public static List<usp_SelectTuyenXeByMaTramDiAndMaTramDenResult> TimNhanhTuyen(int iMaTramDi, int iMaTramDen)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_SelectTuyenXeByMaTramDiAndMaTramDenResult> dsTuyen = db.usp_SelectTuyenXeByMaTramDiAndMaTramDen(iMaTramDi, iMaTramDen);
            return dsTuyen.ToList();
        }

        public static List<usp_SelectTUYEN_XEByTramAndGiaResult> TimKiemNangCao(int iMaTramDi, int iMaTramDen, int iGiaVeTu, int iGiaVeDen)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_SelectTUYEN_XEByTramAndGiaResult> dsTuyen = db.usp_SelectTUYEN_XEByTramAndGia(iMaTramDi, iMaTramDen, iGiaVeTu, iGiaVeDen);
            return dsTuyen.ToList();
        }

        public static void ThemTuyenXe(TUYEN_XE TuyenXeDTO)
        {
            int? MaTuyen = 0;
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            db.usp_InsertTUYEN_XE(TuyenXeDTO.TenTuyenXe,
                TuyenXeDTO.KhoangThoiGianDi,
                TuyenXeDTO.TanSuatChuyen,
                TuyenXeDTO.LuongTaiXe,
                TuyenXeDTO.MaTramDi,
                TuyenXeDTO.MaTramDen,
                TuyenXeDTO.GiaVe,
                TuyenXeDTO.GioChayChuyenDauTienTrongNgay,
                TuyenXeDTO.GioChayChuyenCuoiCungTrongNgay,
                ref MaTuyen);
        }

        public List<usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByNamResult> SelectSoLuongChuyenXeTheoTuyenByNam(int Nam)
        {

            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByNamResult> dsTuyen = db.usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByNam(Nam);
            return dsTuyen.ToList();
        }
        public List<usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByThangResult> SelectSoChuyenXeAndKhachHangCuaTuyenByThang(int nam, int thang)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByThangResult> dsTuyen = db.usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByThang(nam, thang);
            return dsTuyen.ToList();
        }
        public List<usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByQuyResult> SelectSoChuyenXeAndHanhKhachCuaTuyenByQuy(int nam, int thangBatDau, int thangKetThuc)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByQuyResult> dsTuyen = db.usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByQuy(nam, thangBatDau, thangKetThuc);
            return dsTuyen.ToList();
        }


        public List<Int32> LayDanhSachMaTuyen(int MaTramDi)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            var KQ = from tuyen in db.TUYEN_XEs
                     where tuyen.MaTramDi == MaTramDi
                     select tuyen.MaTuyenXe;

            List<Int32> danhSach = KQ.ToList();

            if (danhSach.Count > 0)
            {
                return danhSach;
            }

            return null;
        }
    }
}
