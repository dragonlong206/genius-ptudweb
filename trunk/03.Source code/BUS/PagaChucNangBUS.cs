using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class PagaChucNangBUS
    {
        PageChucNangDAO _pageChucNangDAO = new PageChucNangDAO();

        public List<Int32> LayDanhSachMaTrang(List<Int32> danhSachMaChucNang)
        {
            return _pageChucNangDAO.LayDanhSachMaTrang(danhSachMaChucNang);
        }
    }
}
