using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;
using DAO;

namespace BUS
{
    public class PhanHoiBUS
    {
        PhanHoiDAO daoPhanHoi = new PhanHoiDAO();

        public void DuyetPhanHoi(int iMaPhanHoiKhachHang, int iMaTaiXe)
        {
            try
            {
                daoPhanHoi.DuyetPhanHoi(iMaPhanHoiKhachHang, iMaTaiXe);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
