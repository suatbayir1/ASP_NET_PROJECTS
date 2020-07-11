using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCstok.Models.Entity;
using PagedList;
using PagedList.Mvc;

namespace MVCstok.Controllers
{
    public class MusteriController : Controller
    {
        DbStokMVCEntities db = new DbStokMVCEntities();

        // Müşteri Listeleme
        public ActionResult Index(int sayfa =1)
        {
            //var liste = db.TBL_MUSTERILER.ToList();
            var liste = db.TBL_MUSTERILER.ToList().ToPagedList(sayfa, 3);
            return View(liste);
        }

        [HttpGet]
        public ActionResult Ekle()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Ekle(TBL_MUSTERILER musteri)
        {
            if (!ModelState.IsValid)
                return View("Ekle");
            db.TBL_MUSTERILER.Add(musteri);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Sil(int id)
        {
            var musteri = db.TBL_MUSTERILER.Find(id);
            db.TBL_MUSTERILER.Remove(musteri);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult MusteriGetir(int id)
        {
            var musteri = db.TBL_MUSTERILER.Find(id);
            return View("MusteriGetir", musteri);
        }

        [HttpPost]
        public ActionResult Guncelle(TBL_MUSTERILER mus)
        {
            var musteri = db.TBL_MUSTERILER.Find(mus.MUSTERIID);
            musteri.MUSTERIAD = mus.MUSTERIAD;
            musteri.MUSTERISOYAD = mus.MUSTERISOYAD;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}