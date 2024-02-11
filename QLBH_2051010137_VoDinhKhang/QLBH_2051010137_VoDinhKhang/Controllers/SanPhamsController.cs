using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using QLBH_2051010137_VoDinhKhang.Models;
using System.IO;
using PagedList;

namespace QLBH_2051010137_VoDinhKhang.Areas.Admin.Controllers
{
    public class SanPhamsController : Controller
    {
        private csdlBanDienThoaiEntities db = new csdlBanDienThoaiEntities();

        // GET: SanPhams
        public ActionResult Index(string sortOrder, int? page)
        {
            ViewBag.SortByName = String.IsNullOrEmpty(sortOrder) ? "ten_desc" : "";
            ViewBag.SortByPrice = (sortOrder == "dongia" ? "dongia_desc" : "dongia");
            ViewBag.CurrentSort = sortOrder;
            var sanPhams = db.SanPhams.Include(s => s.LoaiSanPham);
            switch (sortOrder)
            {
                case "ten_desc":
                    sanPhams = sanPhams.OrderByDescending(s => s.TenSP);
                    break;
                case "dongia_desc":
                    sanPhams = sanPhams.OrderByDescending(s => s.DonGia);
                    break;
                case "dongia":
                    sanPhams = sanPhams.OrderBy(s => s.DonGia);
                    break;
                default://mặc định sắp xếp theo tên sản phẩm
                    sanPhams = sanPhams.OrderBy(s => s.TenSP);
                    break;
            }
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            return View(sanPhams.ToPagedList(pageNumber, pageSize));
            //var sanPhams = db.SanPhams.Include(s => s.LoaiSanPham);
            //return View(sanPhams.ToList());
        }

        // GET: SanPhams/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPhams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }

        // GET: SanPhams/Create
        public ActionResult Create()
        {
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams, "MaLoaiSP", "TenLoaiSP");
            return View();
        }

        // POST: SanPhams/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaSP,TenSP,DonGia,Donvitinh,HinhAnh,MaLoaiSP")] SanPham sanPham,
               HttpPostedFileBase HinhAnh)
        {

            if (ModelState.IsValid)
            {
                if (HinhAnh != null && HinhAnh.ContentLength > 0)
                {
                    string filename = Path.GetFileName(HinhAnh.FileName);
                    string path = Server.MapPath("~/Images/" + filename);
                    sanPham.HinhAnh = "Images/" + filename;
                    HinhAnh.SaveAs(path);
                }
                db.SanPhams.Add(sanPham);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams, "MaLoaiSP", "TenLoaiSP", sanPham.MaLoaiSP);
            return View(sanPham);
        }

        // GET: SanPhams/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPhams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams, "MaLoaiSP", "TenLoaiSP", sanPham.MaLoaiSP);
            return View(sanPham);
        }

        // POST: SanPhams/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaSP,TenSP,DonGia,Donvitinh,HinhAnh,MaLoaiSP")] SanPham sanPham,
               HttpPostedFileBase HinhUpload, string HinhAnh)
        {
            if (ModelState.IsValid)
            {
                if (HinhUpload != null && HinhUpload.ContentLength > 0)
                {
                    string filename = Path.GetFileName(HinhUpload.FileName);
                    string path = Server.MapPath("~/Images/" + filename);
                    sanPham.HinhAnh = "Images/" + filename;
                    HinhUpload.SaveAs(path);
                }
                else
                {
                    sanPham.HinhAnh = HinhAnh;//nếu không chọn hình mới thì giữ hình cũ
                }

                db.Entry(sanPham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams, "MaLoaiSP", "TenLoaiSP", sanPham.MaLoaiSP);
            return View(sanPham);
        }

        // GET: SanPhams/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPhams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }

        // POST: SanPhams/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            SanPham sanPham = db.SanPhams.Find(id);
            db.SanPhams.Remove(sanPham);
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
