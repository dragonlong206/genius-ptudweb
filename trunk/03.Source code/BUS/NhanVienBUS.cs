﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class NhanVienBUS
    {
        NhanVienDAO _nhanVienDAO = new NhanVienDAO();

        public int LayLoaiNhanVien(int maNhanVien)
        {
            return _nhanVienDAO.LayLoaiNhanVien(maNhanVien);
        }
    }
}
