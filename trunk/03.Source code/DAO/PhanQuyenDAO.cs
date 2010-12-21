using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DTO;

namespace DAO
{
    public class PhanQuyenDAO
    {
        CongTyLuHanhDataContext _context = new CongTyLuHanhDataContext();

        //Lấy danh sách mã chức năng của một nhân viên theo loại nhân viên (vai trò)
        public List<Int32> LayDanhSachMaChucNang(int maLoaiNhanVien)
        {
            return (from pq in _context.PHAN_QUYENs
                    where pq.MaLoaiNhanVien == maLoaiNhanVien
                    select pq.MaChucNang.Value).ToList();
        }
    }
}
