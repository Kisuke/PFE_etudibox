using PFE_etudibox.Models.TrocModel;
using PFE_etudibox.Models.TrocVO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PFE_etudibox.Controllers.TrocController
{
    public class TrocController : Controller
    {
        // GET: //Troc

        public ActionResult Index()
        {

            //Call of InscriptionModel 
            TrocModel bm = new TrocModel();

            //Connection to the database
            bm.Connect();

            //List the bon plan saved in the database
            List<Troc> trocList = bm.QueryList();

            return View(trocList);
        }

    }
}