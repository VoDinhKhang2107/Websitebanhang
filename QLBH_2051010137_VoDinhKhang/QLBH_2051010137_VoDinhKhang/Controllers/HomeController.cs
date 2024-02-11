using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using QLBH_2051010137_VoDinhKhang.Models;
using System.Web.UI;
using PagedList;
namespace QLBH_2051010137_VoDinhKhang.Controllers
{
    public class HomeController : Controller
    {
        csdlBanDienThoaiEntities db = new csdlBanDienThoaiEntities();
        //Tìm kiếm sản phẩm
        public ActionResult Index(string currentFilter, int? page, int maloaisp = 0, string SearchString="")
        {
            if (SearchString != "")
            {
                page = 1;
                var sanPhams = db.SanPhams.Include(s => s.LoaiSanPham).Where(x => x.TenSP.ToUpper().Contains(SearchString.ToUpper()));
                sanPhams = sanPhams.OrderBy(x => x.TenSP);
                int pageSize = sanPhams.Count();
                int pageNumber = (page ?? 1);
                return View(sanPhams.ToPagedList(pageNumber, pageSize));
            }
            else
                SearchString = currentFilter;
            ViewBag.CurrentFilter = currentFilter;
            if (maloaisp == 0)
            {
                int pageSize = 12;
                int pageNumber = (page ?? 1);
                var sanPhams = db.SanPhams.Include(s => s.LoaiSanPham).OrderBy(x => x.TenSP);
                //phải order trước skip
                return View(sanPhams.ToPagedList(pageNumber, pageSize));
            }
            else//lọc theo loại sản phẩm
            {
                var sanPhams = db.SanPhams.Include(s => s.LoaiSanPham).Where(x => x.MaLoaiSP == maloaisp);
                sanPhams = sanPhams.OrderBy(x => x.TenSP);
                int pageSize = sanPhams.Count();
                int pageNumber = (page ?? 1);
                return View(sanPhams.ToPagedList(pageNumber, pageSize));
            }
            //if (SearchString != "")
            //{
            //    page = 1;
            //    var sanPhams = db.SanPhams.Include(s => s.LoaiSanPham).Where(x => x.TenSP.ToUpper().Contains(SearchString.ToUpper()));
            //    sanPhams = sanPhams.OrderBy(x => x.TenSP);
            //    int pageSize = sanPhams.Count();
            //    int pageNumber = (page ?? 1);
            //    return View(sanPhams.ToPagedList(pageNumber, pageSize));
            //}
            //else
            //    SearchString = currentFilter;
            //ViewBag.CurrentFilter = currentFilter;

            //if (maloaisp == 0)
            //{
            //    int pageSize = 12;
            //    int pageNumber = (page ?? 1);
            //    var sanPhams = db.SanPhams.Include(s => s.LoaiSanPham).OrderBy(x => x.TenSP);
            //    //phải order trước skip
            //    return View(sanPhams.ToPagedList(pageNumber, pageSize));
            //}
            //else//lọc theo loại sản phẩm
            //{
            //    var sanPhams = db.SanPhams.Include(s => s.LoaiSanPham).Where(x => x.MaLoaiSP == maloaisp);
            //    sanPhams = sanPhams.OrderBy(x => x.TenSP);
            //    int pageSize = sanPhams.Count();
            //    int pageNumber = (page ?? 1);
            //    return View(sanPhams.ToPagedList(pageNumber, pageSize));
            //}
            //int pageSize = 12;
            //int pageNumber = (page ?? 1);
            //var sanPhams = db.SanPhams.Include(s => s.LoaiSanPham);

            //return View(sanPhams.ToList());
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

    }
}