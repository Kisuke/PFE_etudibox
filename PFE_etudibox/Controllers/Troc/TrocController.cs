using PFE_etudibox.Models.TrocModel;
using PFE_etudibox.VO.TrocVO;
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
            //Recupération de l'id de la catégorie pour sélectionner la liste à afficher
            int categoryId = 0;
            int subCategoryId = 0;
            if (Request.QueryString["id"] != null)
            {
                //Recherche d'un séparateur
                if (Request.QueryString["id"].Contains(","))
                {
                    //On veut lister les trocs d'une sous-catégorie
                    String[] temp = Request.QueryString["id"].Split(new Char[] { ',' });
                    categoryId = int.Parse(temp[0]);
                    subCategoryId = int.Parse(temp[1]);
                }
                else
                {
                    //On veut lister les trocs d'une catégorie
                    categoryId = int.Parse(Request.QueryString["id"]);
                }

            }

            //Call of InscriptionModel 
            TrocModel bm = new TrocModel();

            //Connection to the database
            bm.Connect();

            //List the troc saved in the database
            List<Troc> trocList = bm.QueryList(categoryId, subCategoryId);

            return View(trocList);
        }

        //
        // GET: /Troc/Delete

        public ActionResult Delete(String id)
        {
            //Call of InscriptionModel 
            TrocModel bm = new TrocModel();

            //Connection to the database
            bm.Connect();

            //We parse the String into int
            int idTroc = int.Parse(id);

            //Delete the Troc in the database
            bm.Delete(idTroc);

            return View("Delete");
        }

        //
        // GET: /Troc/Create

        public ActionResult Create()
        {
            return View("Create");
        }

    }
}