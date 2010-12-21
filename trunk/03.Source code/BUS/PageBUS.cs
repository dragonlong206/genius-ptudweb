using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAO;
using DTO;

namespace BUS
{
    public class PageBUS
    {
        PageDAO _pagaDAO = new PageDAO();

        public List<PAGE> LayDanhSachCacUrl(List<Int32> danhSachMaTrang)
        {
            return _pagaDAO.LayDanhSachCacUrl(danhSachMaTrang);
        }
    }
}
