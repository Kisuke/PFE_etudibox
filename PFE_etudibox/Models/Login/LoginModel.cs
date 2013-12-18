using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;
using PFE_etudibox.Models.Base;
using MySql.Data.MySqlClient;

namespace PFE_etudibox.Models.Login
{
    public class LoginModel
    {
        DatabaseConnection db;

        public void Connect()
        {
            db = new DatabaseConnection();
        }

        public int Query(string email, string password)
        {
<<<<<<< HEAD
            String result = db.Connect("SELECT count(*) FROM eb_user WHERE eb_user_email = '"+email+"' AND eb_user_password ='"+password+"';");
            int result1 = 0;
            if ( result != null)
            {
                result1 = int.Parse(result);
            }
=======
            String result = db.Query("SELECT count(*) FROM eb_user WHERE eb_user_email = '"+email+"' AND eb_user_password ='"+password+"';");

            int result1 = int.Parse(result);
>>>>>>> 68055a769ca2c6d2af3bc6701a32a16a8a79b182

            return result1;
        }

    }
}