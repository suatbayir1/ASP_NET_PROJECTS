using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCstok.Models.Entity;

namespace MVCstok.Controllers
{
    public class SatisController : Controller
    {
        DbStokMVCEntities db = new DbStokMVCEntities();

        // GET: Satis
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult YeniSatis()
        {
            return View();
        }

        [HttpPost]
        public ActionResult YeniSatis(TBL_SATISLAR satis)
        {
            db.TBL_SATISLAR.Add(satis);
            db.SaveChanges();
            return View("Index");
        }
    }
}