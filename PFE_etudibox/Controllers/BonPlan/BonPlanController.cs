using PFE_etudibox.Models.BonPlanModel;
using PFE_etudibox.VO.BonPlanVO;
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
            //Recupération de l'id de la catégorie pour sélectionner la liste à afficher
            int categoryId = 0;
            int subCategoryId = 0;
            if (Request.QueryString["id"] != null)
            {
                //Recherche d'un séparateur
                if (Request.QueryString["id"].Contains(","))
                {
                    //On veut lister les bons plans d'une sous-catégorie
                    String[] temp = Request.QueryString["id"].Split(new Char [] {','});
                    categoryId= int.Parse(temp[0]);
                    subCategoryId = int.Parse(temp[1]);
                }
                else
                {
                    //On veut lister les bons plans d'une catégorie
                    categoryId = int.Parse(Request.QueryString["id"]);
                }
                
            }

            //Call of InscriptionModel 
            BonPlanModel bm = new BonPlanModel();

            //Connection to the database
            bm.Connect();

            //List the bon plan saved in the database
            List<PFE_etudibox.VO.BonPlanVO.BonPlan> bonPlanList = bm.QueryList(categoryId, subCategoryId);

            return View(bonPlanList);
        }
         
        //
        // GET: /BonPlan/Delete

        public ActionResult Delete(String id)
        {
            //Call of InscriptionModel 
            BonPlanModel bm = new BonPlanModel();

            //Connection to the database
            bm.Connect();

            //We parse the String into int
            int idBonPlan = int.Parse(id);

            //Delete the BonPlan in the database
            bm.Delete(idBonPlan);

            return View("Delete");
        }

        //
        // GET: /BonPlan/Create

        public ActionResult Create()
        {
            return View("Create");
        }
    }
}
