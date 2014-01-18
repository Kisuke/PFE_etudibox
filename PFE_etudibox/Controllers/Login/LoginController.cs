using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PFE_etudibox.Models.Base;
using PFE_etudibox.Models.Login;
using System.Windows.Forms;
using System.Security.Cryptography;
using System.Text;
using PFE_etudibox.Controllers.Inscription;

namespace PFE_etudibox.Controllers.Login
{
    public class LoginController : Controller
    {
        //
        // GET: /Menu/

        public ActionResult Index(string email, string password)
        {
            var test = Session["id"];
            //On vérifie que l'utilisateur n'est pas connecté
            if(Session["id"] == null)
            {
                //On vérifie que les champs sont bien remplis
                if (!(password == null) && !(email == null))
                {
                    //Chiffrage du mot de passe
                    Chiffrage md5 = new Chiffrage();
                    password = md5.getMd5Hash(password);

                    //Authentifiction
                    int[] resultList = Connect(email, password);
                   
                    //Vérification réussie
                    if (resultList[0] == 1)
                    {
                        //Ouverture d'une session
                        Session["id"] = resultList[1].ToString();
                    }
                    else
                    {
                        MessageBox.Show("Erreur ");
                    }

                }
            }
            return View();
        }


        /**
        * Name : GetDataList
        * Function : Verify that the email and password are in the database
        * Input : string email, string password
        * Output: int result
        * */
        private int[] Connect(string email, string password)
        {
            LoginModel lm = new LoginModel();
            //On se connecte à la base de données
            lm.Connect();
            //On vérifie si l'utilisateur et le mot de passe existent en bdd
            int[] resultList = lm.Query(email, password);
            return resultList;
        }

        /**
        * Name : Logout_Click
        * Function : End of session of the user
        * Input : 
        * Output: 
        * */
        protected void Logout_Click()
        {
            Session["id"] = null;

        }
    }
}
