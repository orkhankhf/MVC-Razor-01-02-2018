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
		WebStudioEntities db = new WebStudioEntities();

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
				var file_name = Path.GetFileName(p_image.FileName);
				var file_path = Path.Combine(Server.MapPath("/Uploads"), file_name);
				p_image.SaveAs(file_path);

				Portfolio new_portfolio = new Portfolio();
				new_portfolio.project_name = p_name;
				new_portfolio.project_description = p_description;
				new_portfolio.project_image = file_name;

				db.Portfolios.Add(new_portfolio);
				db.SaveChanges();
			}
			return RedirectToAction("Show");
		}
    }
}