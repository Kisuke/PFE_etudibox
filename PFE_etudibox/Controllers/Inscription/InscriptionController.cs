using PFE_etudibox.Controllers.Login;
using PFE_etudibox.Models.Inscription;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PFE_etudibox.Controllers.Inscription
{
    public class InscriptionController : Controller
    {
        //
        // GET: /Inscription/

        public ActionResult Index(string identifiant, string firstname, string lastname, string email, string password, string checkedpassword)
            {
                if (identifiant !=  null && firstname != null  && email != null && password != null && checkedpassword != null)
                {
                    //Chiffrage du mot de passe et de la confirmation
                    Chiffrage md5 = new Chiffrage();
                    password = md5.getMd5Hash(password);
                    checkedpassword = md5.getMd5Hash(checkedpassword);

                    //Verification du mot de passe 
                    if (password.Equals(checkedpassword))
                    {
                        //Création d'un membre
                        Member member = new Member(firstname, lastname, identifiant, email, password);

                        //Appel du InscriptionModel 
                        InscriptionModel im = new InscriptionModel();

                        //On se connecte à la base de données
                        im.Connect();

                        //Ajout du nouveau membre à la base de données
                        im.Query(member);
                        ViewBag.Number = "Vous êtes bien inscrit(e)s";
                    }
                    else
                    {
                        //On avertit l'utilisateur que son mot de passe ne correspond pas à son confirmation mot de passe
                        ViewBag.Number = "Votre mot de passe n'est pas le même que votre mot de passe de confirmation.";
                    }
                }

            return View();
        }

    }
}

