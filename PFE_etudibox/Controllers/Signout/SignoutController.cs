using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PFE_etudibox.Controllers.Signout
{
    public class SignoutController : Controller
    {
        //
        // GET: /Signout/

        public ActionResult Index()
        {
            Session["username"] = null;
            Response.Redirect("Login");
            return View();
        }

    }
}
