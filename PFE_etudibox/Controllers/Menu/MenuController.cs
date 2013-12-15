using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Windows.Forms;

namespace PFE_etudibox.Controllers.Menu
{
    public class MenuController : Controller
    {
        //
        // GET: /Menu/

        public ActionResult Index()
        {
            MessageBox.Show("Bienvenue " + Session["username"].ToString());
            return View();
        }

    }
}
