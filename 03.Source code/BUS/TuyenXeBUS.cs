using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAO;

namespace BUS
{
    public class TuyenXeBUS
    {
        public static List<usp_SelectTuyenXeByMaTramDiAndMaTramDenResult> TimNhanhTuyen(int iMaTramDi, int iMaTramDen)
        {
            return TuyenXeDAO.TimNhanhTuyen(iMaTramDi, iMaTramDen);
        }

        public static List<usp_SelectTUYEN_XEByTramAndGiaResult> TimKiemNangCao(int iMaTramDi, int iMaTramDen, int iGiaVeTu, int iGiaVeDen)
        {
            if (iGiaVeTu > iGiaVeDen)
            {
                throw new Exception("Khoảng giá vé nhập vào không hợp lý");
            }
            else
            {
                return TuyenXeDAO.TimKiemNangCao(iMaTramDi, iMaTramDen, iGiaVeTu, iGiaVeDen);
            }
        }

        public static void ThemTuyenXe(TUYEN_XE TuyenXeDTO)
        {
            TuyenXeDAO.ThemTuyenXe(TuyenXeDTO);
        }

        public List<usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByNamResult> SelectSoLuongChuyenTheoTuyenByNam(int Nam)
        {
            TuyenXeDAO tuyenXe = new TuyenXeDAO();
            return tuyenXe.SelectSoLuongChuyenXeTheoTuyenByNam(Nam);
        }
        public List<usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByThangResult> SelectSoChuyenXeAndKhachHangCuaTuyenByThang(int nam, int thang)
        {
            TuyenXeDAO tuyenXe = new TuyenXeDAO();
            return tuyenXe.SelectSoChuyenXeAndKhachHangCuaTuyenByThang(nam, thang);
        }
        public List<usp_SeleclSoLuongChuyenVaKhachHangTheoTuyenByQuyResult> SelectSoChuyenXeAndHanhKhachCuaTuyenByQuy(int nam, int thangBatDau, int thangKetThuc)
        {
            TuyenXeDAO tuyenXe = new TuyenXeDAO();
            return tuyenXe.SelectSoChuyenXeAndHanhKhachCuaTuyenByQuy(nam, thangBatDau, thangKetThuc);
        }


        public List<Int32> LayDanhSachMaTuyen(int MaTramDi)
        {
            return new TuyenXeDAO().LayDanhSachMaTuyen(MaTramDi);
        }

    }
}