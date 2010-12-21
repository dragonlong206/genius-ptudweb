using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class ChucNangBUS
    {
        ChucNangDAO _chucNangDAO = new ChucNangDAO();

        public List<CHUC_NANG> LayDanhSachChucNang()
        {
            return _chucNangDAO.LayDanhSachChucNang();
        }

        public List<CHUC_NANG> LayDanhSachChucNang(int maLoaiNhanVien)
        {
            return _chucNangDAO.LayDanhSachChucNang(maLoaiNhanVien);
        }

        public CHUC_NANG LayChucNang(int MaChucNang)
        {
            return _chucNangDAO.LayChucNang(MaChucNang);
        }
    }
}
