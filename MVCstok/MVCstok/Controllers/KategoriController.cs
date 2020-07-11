using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCstok.Models.Entity;
using PagedList.Mvc;
using PagedList;

namespace MVCstok.Controllers
{
    public class KategoriController : Controller
    {
        DbStokMVCEntities db = new DbStokMVCEntities();

        // kategorileri listeleme
        public ActionResult Index(int sayfa=1)
        {
            //var liste = db.TBL_KATEGORILER.ToList();
            var liste = db.TBL_KATEGORILER.ToList().ToPagedList(sayfa, 2);
            return View(liste);
        }

        [HttpGet]   //sadece ekleme sayfasına gönder
        public ActionResult Ekle()
        {
            return View();
        }

        [HttpPost]  // sayfaya post işlemi yapıldığı zaman. Butona basıldığı zaman kategoriyi ekle
        public ActionResult Ekle(TBL_KATEGORILER kategori)
        {
            if (!ModelState.IsValid)
                return View("Ekle");
            db.TBL_KATEGORILER.Add(kategori);
            db.SaveChanges();
            return View();
        }

        public ActionResult Sil(int id)
        {
            var kategori = db.TBL_KATEGORILER.Find(id);
            db.TBL_KATEGORILER.Remove(kategori);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult KategoriGetir(int id)
        {
            var ktg = db.TBL_KATEGORILER.Find(id);
            return View("KategoriGetir", ktg);
        }

        [HttpPost]
        public ActionResult Guncelle(TBL_KATEGORILER ktg)
        {
            var kategori = db.TBL_KATEGORILER.Find(ktg.KATEGORIID);
            kategori.KATEGORIAD = ktg.KATEGORIAD;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}