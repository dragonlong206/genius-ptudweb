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

        //public List<usp_SelectChiTietChuyenByMaChuyenXeResult> SelectChiTietChuyenXeByMaChuyenXe(int maChuyenXe)
        //{
        //    CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
        //    ISingleResult<usp_SelectChiTietChuyenByMaChuyenXeResult> dsChuyenXe = db.usp_SelectChiTietChuyenByMaChuyenXe(maChuyenXe);
        //    return dsChuyenXe.ToList();

        //}

        
    }
}
