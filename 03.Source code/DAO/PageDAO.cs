using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class PageDAO
    {
        CongTyLuHanhDataContext _context = new CongTyLuHanhDataContext();

        /// <summary>
        /// Lấy danh sách các Page theo danh sách mã trang
        /// </summary>
        /// <param name="danhSachMaTrang">danh sách mã trang</param>
        /// <returns>danh sách page</returns>
        public List<PAGE> LayDanhSachCacUrl(List<Int32> danhSachMaTrang)
        {
            return (from p in _context.PAGEs
                    where danhSachMaTrang.Contains(p.MaTrang)
                    select p).ToList();
        }
    }
}
