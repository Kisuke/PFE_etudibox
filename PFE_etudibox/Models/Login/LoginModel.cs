using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;
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

        public int Query(string email, string password)
        {

            QueryResult dataList = db.Query("SELECT count(*) FROM eb_user WHERE eb_user_email = '"+email+"' AND eb_user_password ='"+password+"';");
            int result1 = 0;
            if ( dataList != null)
            {
                result1 = Convert.ToInt32(dataList.GetValue(0, 0));
            }

            return result1;
        }

    }
}