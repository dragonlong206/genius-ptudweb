using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;

namespace BUS
{
    public class TinTucBUS
    {
        TinTucDAO daoTinTuc = new TinTucDAO();
        public void UpdateHinhAnh(int iMaTinTuc, string strFileName)
        {
            daoTinTuc.UpdateHinhAnh(iMaTinTuc, strFileName);
        }
    }
}
