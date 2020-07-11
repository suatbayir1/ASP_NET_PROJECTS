using MVCstok.Models.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCstok.Controllers
{
    public class UrunController : Controller
    {
        DbStokMVCEntities db = new DbStokMVCEntities();

        public ActionResult Index(string aranacakDeger)
        {
            var liste = from d in db.TBL_URUNLER select d;
            if (!string.IsNullOrEmpty(aranacakDeger))
            {
                liste = liste.Where(m => m.URUNAD.Contains(aranacakDeger));
            }
            return View(liste.ToList());
            // var liste = db.TBL_URUNLER.ToList();
           // return View(liste);
        }

        [HttpGet]
        public ActionResult Ekle()
        {
            // Kategoriler tablosundan dropdownlist'e verileri çekme
            List<SelectListItem> liste = (from i in db.TBL_KATEGORILER.ToList()
                                         select new SelectListItem
                                         {
                                             Text = i.KATEGORIAD,
                                             Value = i.KATEGORIID.ToString()
                                         }).ToList();
            ViewBag.liste = liste;
            return View();
        }

        [HttpPost]
        public ActionResult Ekle(TBL_URUNLER u)
        {
            if (u.URUNAD != null || u.URUNKATEGORI != null)
            {
                // 
                var ktg = db.TBL_KATEGORILER.Where(m => m.KATEGORIID == u.TBL_KATEGORILER.KATEGORIID).FirstOrDefault();
                u.TBL_KATEGORILER = ktg;
                db.TBL_URUNLER.Add(u);
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }

        public ActionResult Sil(int id)
        {
            var urun = db.TBL_URUNLER.Find(id);
            db.TBL_URUNLER.Remove(urun);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult UrunGetir(int id)
        {
            var urun = db.TBL_URUNLER.Find(id);

            // Kategoriler tablosundan dropdownlist'e verileri çekme
            List<SelectListItem> liste = (from i in db.TBL_KATEGORILER.ToList()
                                          select new SelectListItem
                                          {
                                              Text = i.KATEGORIAD,
                                              Value = i.KATEGORIID.ToString()
                                          }).ToList();
            ViewBag.liste = liste;

            return View(urun);
        }

        public ActionResult Guncelle(TBL_URUNLER u)
        {
            var urun = db.TBL_URUNLER.Find(u.URUNID);
            var ktg = db.TBL_KATEGORILER.Where(m => m.KATEGORIID == u.TBL_KATEGORILER.KATEGORIID).FirstOrDefault();
            urun.FIYAT = u.FIYAT;
            urun.MARKA = u.MARKA;
            urun.STOK = u.STOK;
            urun.URUNAD = u.URUNAD;
            urun.URUNKATEGORI = ktg.KATEGORIID;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

    }
}