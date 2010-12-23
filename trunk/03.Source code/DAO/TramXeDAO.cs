using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;
using DTO;

namespace DAO
{
    public class TramXeDAO
    {
        public List<usp_SelectTRAM_XEsAllResult> LayDSTramXe()
        {
            CongTyLuHanhDataContext db = new CongTyLuHanhDataContext();
            ISingleResult<usp_SelectTRAM_XEsAllResult> dsTram = db.usp_SelectTRAM_XEsAll();
            return dsTram.ToList();
        }
        
    }
}
