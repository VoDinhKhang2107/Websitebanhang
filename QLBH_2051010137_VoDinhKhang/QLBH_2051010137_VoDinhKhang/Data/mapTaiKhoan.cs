using Data.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class mapTaiKhoan
    {
        csdlBanDienThoaiEntities db= new csdlBanDienThoaiEntities();
        public ThanhVien TimKiem(string username, string password)
        {
            var user = db.ThanhViens.Where(m => m.TaiKhoan == username & m.MatKhau == password).ToList();
            if (user.Count > 0)
            {

                return user[0];
            }
            else
            {
                return null;
            }
        }
    }
}
