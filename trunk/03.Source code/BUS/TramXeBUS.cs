using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;
using DTO;
using DAO;

namespace BUS
{
    public class TramXeBUS
    {
        public List<usp_SelectTRAM_XEsAllResult> LayDSTramXe()
        {
            TramXeDAO TramXeDAO = new TramXeDAO();
            return TramXeDAO.LayDSTramXe();
        }
    }
}
