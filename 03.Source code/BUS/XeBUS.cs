using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAO;

namespace BUS
{
    public class XeBUS
    {
        XeDAO XeDAO = new XeDAO();
        public List<XE> LayDSXeChuaPhanCong()
        {
            return XeDAO.LayDSXeChuaPhanCong();
        }

        public bool PhanXeChoTaiXe(int iMaXe, int iMaTaiXe)
        {
            if (iMaTaiXe > 0 && iMaXe > 0)
            {
                return XeDAO.PhanXeChoTaiXe(iMaXe, iMaTaiXe);
            }
            return false;
        }
        public List<usp_SelectXEsAllResult> LayDSXe()
        {
            return XeDAO.LayDSXe();
        }
        public List<XE> LayDSXeDaPhanCong()
        {
            return XeDAO.LayDSXeDaPhanCong();
        }
    }
}
