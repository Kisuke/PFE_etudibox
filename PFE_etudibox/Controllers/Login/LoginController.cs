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
            
            //Chiffrage du mot de passe
            if (!(password == null))
            {
                Chiffrage md5 = new Chiffrage();
                password = md5.getMd5Hash(password);

                //Tentative de connexion
                Connect(email, password);
            }
            
            return View();
        }

        private void Connect(string email, string password)
        {
            LoginModel lm = new LoginModel();
            //On se connecte à la base de données
            lm.Connect();
            //On vérifie si l'utilisateur et le mot de passe existent en bdd
            int result = lm.Query(email, password);
            if (result == 1)
            {
                Session["username"] = email;
                
                Response.Redirect("Login");
            }
            else
            {
                MessageBox.Show("Erreur ");
            }
            
        }

    }
}
