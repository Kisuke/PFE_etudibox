using PFE_etudibox.Controllers.Inscription;
using PFE_etudibox.Models.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PFE_etudibox.Models.Inscription
{
    public class InscriptionModel
    {
        DatabaseConnection db;

        public void Connect()
        {
            db = new DatabaseConnection();
        }

        public void Query(Member newMember)
        {
            string query = "INSERT INTO etudibox.eb_user (`eb_user_email`, `eb_user_password`, `eb_firstname`, `eb_lastname`, `eb_login`) VALUES ('" + newMember.email + "', '" + newMember.password + "', '" + newMember.firstname + "', '" + newMember.lastname + "', '" + newMember.login + "');";
            QueryResult dataList = db.Query(query);
        }
    }
}