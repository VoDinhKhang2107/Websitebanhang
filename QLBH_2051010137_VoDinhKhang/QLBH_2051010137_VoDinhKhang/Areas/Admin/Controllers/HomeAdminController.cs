using QLBH_2051010137_VoDinhKhang.Models;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net.PeerToPeer;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace QLBH_2051010137_VoDinhKhang.Areas.Admin.Controllers
{
    public class HomeAdminController : Controller
    {
        csdlBanDienThoaiEntities db = new csdlBanDienThoaiEntities();
        // GET: Admin/HomeAdmin
        public ActionResult Index()
        {
            if (Session["user"] == null)
            {
                return RedirectToAction("DangNhap");
            }
            else
            {
                return View();
            }
        }
        public ActionResult DangNhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DangNhap(string user, string password)
        {
            //check db

            var thanhVien = db.ThanhViens.SingleOrDefault(m => m.TaiKhoan.ToLower() == user.ToLower() && m.MatKhau == password);


            if (thanhVien != null)
            {


                // teo session vi gan giá tri
                Session["user"] = thanhVien;
                ViewBag.user = thanhVien;
                return RedirectToAction("Index");
            }
            else
            {
                TempData["error"] = "Tåi khoån đăng nhập không đúng";
                return View();
            }

        }
        public ActionResult DangXuat()
        {
            // x6a session
            Session.Remove("user");
            //Xöa session form authent
            FormsAuthentication.SignOut();
            return RedirectToAction("DangNhap");
        }
        public ActionResult DangKy()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DangKy(ThanhVien thanhvien)
        {

            db.ThanhViens.Add(thanhvien);
            db.SaveChanges();
            TempData["DangKy"] = "Đăng ký thành công!";
            //return RedirectToAction("DangNhap");

            return View();



        }
    }
}