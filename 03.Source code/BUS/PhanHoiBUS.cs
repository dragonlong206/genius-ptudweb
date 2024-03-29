﻿using System;
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

        public void CapNhatTinhTrangPhanHoiDaDoc(int MaPhanHoi)
        {
            try
            {
                daoPhanHoi.CapNhatTinhTrangPhanHoiDaDoc(MaPhanHoi);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public usp_SelectPHAN_HOIs_DemPhanHoiChuaDocCuaTaiXeResult DemPhanHoiChuaDoc(int MaTaiXe)
        {
            try
            {
                return daoPhanHoi.DemPhanHoiChuaDoc(MaTaiXe);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void ThemPhanHoiDaDuyet(int iMaTaiXe, int iMaPhanHoiKhach, int iMaNhanVienDuyet)
        {
            daoPhanHoi.ThemPhanHoiDaDuyet(iMaTaiXe, iMaPhanHoiKhach, iMaNhanVienDuyet);
        }
    }
}
