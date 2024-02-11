using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QLBH_2051010137_VoDinhKhang.Models
{
    [Serializable]
    public class CartItem
    {

        //Hàm tạo cho giỏ hàng
        public string Hinh { get; set; }
        public int MaSP { get; set; }
        public string TenSP { get; set; }
        public double DonGia { get; set; }
        public int SoLuong { get; set; }
        public double ThanhTien
        {
            get { return SoLuong * DonGia; }
        }
    }

}