using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class TinTucBUS
    {
        TinTucDAO daoTinTuc = new TinTucDAO();
        public void UpdateHinhAnh(int iMaTinTuc, string strFileName)
        {
            daoTinTuc.UpdateHinhAnh(iMaTinTuc, strFileName);
        }

        public List<TIN_TUC> SelectTinTucMoi(int nSoTinMoi)
        {
            return daoTinTuc.SelectTinTucMoi(nSoTinMoi);
        }
    }
}
