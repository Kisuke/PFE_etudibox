using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PFE_etudibox.Models.Base;
using PFE_etudibox.Models.Home;
using System.Windows.Forms;
using System.Security.Cryptography;
using System.Text;

namespace PFE_etudibox.Controllers.Home
{
    public class HomeController : Controller
    {
        //
        // GET: /Menu/

        public ActionResult Index(string email, string password)
        {
            
            //Chiffrage du mot de passe
            if (!(password == null))
            {
                password = getMd5Hash(password);

                //Tentative de connexion
                Connect(email, password);
            }
            
            return View();
        }

        private void Connect(string email, string password)
        {
            HomeModel lm = new HomeModel();
            //On se connecte à la base de données
            lm.Connect();
            //On vérifie si l'utilisateur et le mot de passe existent en bdd
            int result = lm.Query(email, password);
            if (result == 1)
            {
                Session["username"] = email;
                
                
                Response.Redirect("Menu");
            }
            else
            {
                MessageBox.Show("Erreur ");
            }
            
        }

        private static string getMd5Hash(string input)
        {
            // Create a new instance of the MD5CryptoServiceProvider object.
            MD5 md5Hasher = MD5.Create();

            // Convert the input string to a byte array and compute the hash.
            byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data 
            // and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string.
            return sBuilder.ToString();
        }

    }
}
