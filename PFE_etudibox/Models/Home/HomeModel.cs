using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;
using PFE_etudibox.Models.Base;
using MySql.Data.MySqlClient;

namespace PFE_etudibox.Models.Home
{
    public class HomeModel
    {
        DatabaseConnection db;

        public void Connect()
        {
            db = new DatabaseConnection();
        }

        public int Query(string email, string password)
        {
            String result = db.Query("SELECT count(*) FROM eb_user WHERE eb_user_email = '"+email+"' AND eb_user_password ='"+password+"';");

            int result1 = int.Parse(result);

            return result1;
        }

    }
}