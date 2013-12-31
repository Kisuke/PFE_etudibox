using PFE_etudibox.Controllers.Inscription;
using PFE_etudibox.Models.Base;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PFE_etudibox.Models.BonPlanModel
{
    public class BonPlanModel : List<BonPlan> 
    {
        DatabaseConnection db;

        List<BonPlan> bonPlanList = new List<BonPlan> ();
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
       * Name : QueryList
       * Function : Verify that the email and password are in the database
       * Input :
       * Output:
       * */
        public BonPlanModel() 
        {
            // Initialisation & Declaration
            int nbRow = 0;
            int nbField = 0;
            String idbonplan = null; 
            String title  = null;
            String imagePath =  null;
            String user_id = null;
            String type = null;
            String body =  null;
            String lastname = null;
            String  firstname = null;
            DateTime date = new DateTime();
            
            //Query to execute 
            string query = "SELECT BP.*, USER.eb_user_lastname, USER.eb_user_firstname FROM etudibox.eb_bon_plan AS BP LEFT JOIN etudibox.eb_user AS USER ON USER.eb_user_id = BP.eb_user_id;";
            QueryResult dataList = db.Query(query);

            // We retrieve the number of rows and fields
            nbRow = dataList.GetRowCount();
            nbField = dataList.GetRowCount();
            
            //We look over the rows
            for (int i = 0; i < nbRow; i++)
            {
                //We look over the fields of a given row 
                 for (int j = 0; j < nbField; j++)
                 {
                     //We retrieve the value of a field
                     Object value = dataList.GetValue(i,j);

                     switch (j)
                     {
                         case 0:
                             idbonplan = Convert.ToString(value);
                             break;
                         case 1:
                             title = Convert.ToString(value);
                             break;
                         case 2:
                             imagePath = Convert.ToString(value);
                             break;
                         case 3:
                             user_id = Convert.ToString(value);
                             break;
                         case 4:
                             type = Convert.ToString(value);
                             break;
                         case 5:
                             body = Convert.ToString(value);
                             break;
                        case 6:
                             date = Convert.ToDateTime(value);
                             break;
                         case 7:
                             lastname = Convert.ToString(value);
                             break;
                         case 8:
                             firstname = Convert.ToString(value);
                             break;
                         default:
                             break;
                     }
                 }
                 this.bonPlanList.Add(new BonPlan(idbonplan, new Member(user_id, lastname, firstname), imagePath, title, type, body, date));

                //Reinitialization (à faire)
            }
        }
     }
}