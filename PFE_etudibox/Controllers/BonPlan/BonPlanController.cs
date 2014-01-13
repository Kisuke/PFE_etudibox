using PFE_etudibox.Models.BonPlanModel;
using PFE_etudibox.Models.BonPlanVO;
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

            //Call of InscriptionModel 
            BonPlanModel bm = new BonPlanModel();

            //Connection to the database
            bm.Connect();

            //List the bon plan saved in the database
            List<BonPlan> bonPlanList = bm.QueryList();

            return View(bonPlanList);
        }

    }
}
