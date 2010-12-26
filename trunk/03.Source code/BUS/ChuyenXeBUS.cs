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
       //}
    }
}
