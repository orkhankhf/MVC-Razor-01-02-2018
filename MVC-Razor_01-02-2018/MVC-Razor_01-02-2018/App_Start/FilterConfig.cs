﻿using System.Web;
using System.Web.Mvc;

namespace MVC_Razor_01_02_2018
{
	public class FilterConfig
	{
		public static void RegisterGlobalFilters(GlobalFilterCollection filters)
		{
			filters.Add(new HandleErrorAttribute());
		}
	}
}
