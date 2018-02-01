using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_Razor_01_02_2018.Models;

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
    }
}