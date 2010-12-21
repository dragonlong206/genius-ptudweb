using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class PhanQuyenBUS
    {
        PhanQuyenDAO _phanQuyenDAO = new PhanQuyenDAO();

        public List<Int32> LayDanhSachMaChucNang(int maLoaiNhanVien)
        {
            return _phanQuyenDAO.LayDanhSachMaChucNang(maLoaiNhanVien);
        }
    }
}
