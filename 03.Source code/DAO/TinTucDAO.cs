using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class TinTucDAO
    {
        public void UpdateHinhAnh(int iMaTinTuc, string strFileName)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            var sql = (from TinTuc in db.TIN_TUCs
                      where TinTuc.MaTinTuc == iMaTinTuc
                      select TinTuc).Single();
            sql.HinhAnh = strFileName;
            db.SubmitChanges();
        }

        public List<TIN_TUC> SelectTinTucMoi(int nSoTinMoi)
        { 
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            var sql = from TinTuc in db.TIN_TUCs
                      orderby TinTuc.NgayDang descending
                      select TinTuc;
            return sql.Take(nSoTinMoi).ToList();
        }
    }
}
