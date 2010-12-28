using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class XeDAO
    {
        public List<XE> LayDSXeChuaPhanCong()
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            var KetQua = from x in db.XEs where x.MaTaiXe == null select x;
            return KetQua.ToList();
        }

        public bool PhanXeChoTaiXe(int iMaXe, int iMaTaiXe)
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            int iSoDong = db.usp_UpdateXE_TAIXE(iMaXe, iMaTaiXe);
            if (iSoDong != -1)
            {
                return true;
            }
            else 
            {
                return false;
            }
        }

        public List<usp_SelectXEsAllResult> LayDSXe()
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            return db.usp_SelectXEsAll().ToList();
        }

        public List<XE> LayDSXeDaPhanCong()
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            var KQ = from xe in db.XEs where xe.MaTaiXe != null select xe;
            return KQ.ToList();
        }
    }
}
