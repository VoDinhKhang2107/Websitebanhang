using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace QLBH_2051010137_VoDinhKhang.Models
{
    public class ViewModel
    {
        public KhachHang khachhang { get; set; }
        public ChiTietDonHang ctdh { get; set; }
        public DonHang DonHang { get; set; }
        public LoaiSanPham loaisp { get; set; }
        public NhanVien nhanvien { get; set; }
        public SanPham sanpham { get; set; }
        //[DisplayFormat(DataFormatString = "{0:0.##0}")]
        public double Thanhtien { get; set; }
    }
}