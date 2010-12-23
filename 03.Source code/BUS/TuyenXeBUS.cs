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
    }
}