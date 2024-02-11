using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLBH_2051010137_VoDinhKhang.Models;

namespace QLBH_2051010137_VoDinhKhang.Controllers
{
    public class ChiTietDonHangsController : Controller
    {
        private csdlBanDienThoaiEntities db = new csdlBanDienThoaiEntities();

        // GET: ChiTietDonHangs
        public ActionResult Index(int MaHD)
        {
            using (csdlBanDienThoaiEntities db = new csdlBanDienThoaiEntities())
            {
                List<KhachHang> khachhang = db.KhachHangs.ToList();
                List<DonHang> DonHang = db.DonHangs.ToList();
                List<NhanVien> nhanvien = db.NhanViens.ToList();
                List<SanPham> sanpham = db.SanPhams.ToList();
                List<ChiTietDonHang> ctdh = db.ChiTietDonHangs.ToList();
                var main = from h in DonHang 
                           join k in khachhang on h.MaKH equals k.MaKH
                           where (h.MaHD == MaHD)
                           select new ViewModel
                           {
                               DonHang = h,
                               khachhang = k
                           }; 
                var sub = from c in ctdh
                          join s in sanpham on c.MaSP equals s.MaSP
                          where (c.MaHD == MaHD)
                          select new ViewModel
                          {
                              ctdh = c,
                              sanpham = s,
                              Thanhtien = Convert.ToDouble(c.DonGiaBan * c.SoLuong)
                          };
                //truyen hai doi tuong trên sang View
                ViewBag.Main = main;
                ViewBag.Sub = sub;
                return View();
            }
            //var chiTietDonHangs = db.ChiTietDonHangs.Include(c => c.DonHang).Include(c => c.SanPham);
            //return View(chiTietDonHangs.ToList());
        }

        // GET: ChiTietDonHangs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietDonHang chiTietDonHang = db.ChiTietDonHangs.Find(id);
            if (chiTietDonHang == null)
            {
                return HttpNotFound();
            }
            return View(chiTietDonHang);
        }

        // GET: ChiTietDonHangs/Create
        public ActionResult Create()
        {
            ViewBag.MaHD = new SelectList(db.DonHangs, "MaHD", "MaHD");
            ViewBag.MaSP = new SelectList(db.SanPhams, "MaSP", "TenSP");
            return View();
        }

        // POST: ChiTietDonHangs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaHD,MaSP,SoLuong,DonGiaBan")] ChiTietDonHang chiTietDonHang)
        {
            if (ModelState.IsValid)
            {
                db.ChiTietDonHangs.Add(chiTietDonHang);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaHD = new SelectList(db.DonHangs, "MaHD", "MaHD", chiTietDonHang.MaHD);
            ViewBag.MaSP = new SelectList(db.SanPhams, "MaSP", "TenSP", chiTietDonHang.MaSP);
            return View(chiTietDonHang);
        }

        // GET: ChiTietDonHangs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietDonHang chiTietDonHang = db.ChiTietDonHangs.Find(id);
            if (chiTietDonHang == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaHD = new SelectList(db.DonHangs, "MaHD", "MaHD", chiTietDonHang.MaHD);
            ViewBag.MaSP = new SelectList(db.SanPhams, "MaSP", "TenSP", chiTietDonHang.MaSP);
            return View(chiTietDonHang);
        }

        // POST: ChiTietDonHangs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaHD,MaSP,SoLuong,DonGiaBan")] ChiTietDonHang chiTietDonHang)
        {
            if (ModelState.IsValid)
            {
                db.Entry(chiTietDonHang).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaHD = new SelectList(db.DonHangs, "MaHD", "MaHD", chiTietDonHang.MaHD);
            ViewBag.MaSP = new SelectList(db.SanPhams, "MaSP", "TenSP", chiTietDonHang.MaSP);
            return View(chiTietDonHang);
        }

        // GET: ChiTietDonHangs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietDonHang chiTietDonHang = db.ChiTietDonHangs.Find(id);
            if (chiTietDonHang == null)
            {
                return HttpNotFound();
            }
            return View(chiTietDonHang);
        }

        // POST: ChiTietDonHangs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ChiTietDonHang chiTietDonHang = db.ChiTietDonHangs.Find(id);
            db.ChiTietDonHangs.Remove(chiTietDonHang);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
