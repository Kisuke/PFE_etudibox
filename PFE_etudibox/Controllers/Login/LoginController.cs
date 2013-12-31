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

namespace PFE_etudibox.Controllers.Login
{
    public class LoginController : Controller
    {
        //
        // GET: /Menu/

        public ActionResult Index(string email, string password)
        {
            var test = Session["username"];
            //On vérifie que l'utilisateur n'est pas connecté
            if(Session["username"] == null)
            {
                //On vérifie que les champs sont bien remplis
                if (!(password == null) && !(email == null))
                {
                    //Chiffrage du mot de passe
                    Chiffrage md5 = new Chiffrage();
                    password = md5.getMd5Hash(password);

                    //Authentifiction
                    int result = Connect(email, password);
                   
                    //Vérification réussi
                    if (result == 1)
                    {
                        //Ouverture d'une session
                        Session["username"] = email;
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
        private int Connect(string email, string password)
        {
            LoginModel lm = new LoginModel();
            //On se connecte à la base de données
            lm.Connect();
            //On vérifie si l'utilisateur et le mot de passe existent en bdd
            int result = lm.Query(email, password);
            return result;
        }

        /**
        * Name : Logout_Click
        * Function : End of session of the user
        * Input : 
        * Output: 
        * */
        protected void Logout_Click()
        {
            Session["username"] = null;

        }
    }
}
