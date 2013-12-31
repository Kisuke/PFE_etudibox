using PFE_etudibox.Models.BonPlanModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PFE_etudibox.Controllers.BonPlanController 
{
    public class BonPlanController : Controller
    {
        // GET: //BonPlan

        public ActionResult Index()
        {
            List<BonPlan> bonPlanList = new List<BonPlan>();

            //Call of InscriptionModel 
            BonPlanModel bm = new BonPlanModel();

            //Connection to the database
            bm.Connect();

            //List the bon plan saved in the database
            bonPlanList = new BonPlanModel();

            return View("Index", bonPlanList);
        }

    }
}
