using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class PageChucNangDAO
    {
        CongTyLuHanhDataContext _context = new CongTyLuHanhDataContext();

        /// <summary>
        /// Lấy danh sách mã trang theo danh sách chức năng
        /// </summary>
        /// <param name="danhSachMaChucNang">danh sách mã chức năng</param>
        /// <returns>danh sách mã trang</returns>
        public List<Int32> LayDanhSachMaTrang(List<Int32> danhSachMaChucNang)
        {
            return (from pcn in _context.PAGE_CHUCNANGs
                   where danhSachMaChucNang.Contains(pcn.MaChucNang)
                   select pcn.MaTrang).ToList<Int32>();
        }
    }
}
