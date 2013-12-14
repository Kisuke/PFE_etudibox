using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PFE_etudibox.Models.Base;

namespace PFE_etudibox.Models.Login
{
    public class LoginModel
    {
        DatabaseConnection db;

        public void Connect()
        {
            db = new DatabaseConnection();
        }

        //Query =>   cmd = db.query("requete SQL");
        //Lire Result => MySqlDataReader result = cmd.ExecuteReader();


    }
}