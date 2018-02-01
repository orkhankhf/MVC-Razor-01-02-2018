using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_Razor_01_02_2018.Models;
using System.IO;

namespace MVC_Razor_01_02_2018.Controllers
{
    public class PortfolioController : Controller
    {
		PortfolioWebSiteEntities db = new PortfolioWebSiteEntities();

        // GET: Portfolio
		public ActionResult Add()
		{
			return View();
		}
		[HttpPost]
        public ActionResult Add(string p_name, string p_description, HttpPostedFileBase p_image)
        {
			if(p_image.ContentLength > 0)
			{
				Random random_number = new Random();
				string random = random_number.Next(111111, 999999).ToString();
				var file_name = Path.GetFileName(p_image.FileName);
				var file_extension = Path.GetExtension(p_image.FileName);
				var file_combine = Path.Combine(Server.MapPath("/Uploads"), random+ file_extension);
				p_image.SaveAs(file_combine);

				Portfolio new_portfolio = new Portfolio();
				new_portfolio.project_name = p_name;
				new_portfolio.project_description = p_description;
				new_portfolio.project_img = random + file_extension;

				db.Portfolio.Add(new_portfolio);
				db.SaveChanges();
			}
			return RedirectToAction("Select");
		}




		public ActionResult Select()
		{
			ViewBag.Portfolios = db.Portfolio.ToList();
			return View();
		}
		


		public ActionResult Delete(int? id)
		{
			Portfolio row = db.Portfolio.Find(id);
			System.IO.File.Delete(Path.Combine(Server.MapPath("/Uploads/"), row.project_img));
			db.Portfolio.Remove(row);
			db.SaveChanges();
			return RedirectToAction("Select");
		}


		public ActionResult Index()
		{
			ViewBag.Portfolios = db.Portfolio.ToList();
			return View();
		}
	}
}