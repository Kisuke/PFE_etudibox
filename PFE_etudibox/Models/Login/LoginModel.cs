using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;
using PFE_etudibox.Models.Base;
using PFE_etudibox.Controllers.Inscription;

namespace PFE_etudibox.Models.Login
{
    public class LoginModel
    {
        DatabaseConnection db;

        /**
        * Name : Connect
        * Function : Connection to the database
        * Input : 
        * Output:
        * */
        public void Connect()
        {
            db = new DatabaseConnection();
        }

        /**
        * Name : Query
        * Function : Verify that the email and password are in the database
        * Input : string email, string password
        * Output: int result1
        * */
        public int[] Query(string email, string password)
        {

            //Query to execute 
            QueryResult dataList = db.Query("SELECT count(*), eb_user_id FROM eb_user WHERE eb_user_email = '" + email + "' AND eb_user_password ='" + password + "';");

            //Verify that the returned result is not null 
            if (dataList != null)
            {
                int nbField = dataList.GetFieldCount();
                int[] resultList = new int[nbField];

                for (int i = 0; i < nbField; i++)
                {
                    if (dataList.GetValue(0, i) != null)
                    {
                        //We convert the result into a int
                        resultList[i] = Convert.ToInt32(dataList.GetValue(0, i));
                    }
                    else
                    {
                        resultList[i] = 0;
                    }
                }
                return resultList;
            }
            else {
                    //Echec
                    return null;
            }
        }
    }
}