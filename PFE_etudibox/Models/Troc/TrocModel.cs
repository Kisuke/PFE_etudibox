using PFE_etudibox.Controllers.Inscription;
using PFE_etudibox.Models.Base;
using PFE_etudibox.Models.TrocVO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PFE_etudibox.Models.TrocModel
{
    public class TrocModel
    {
        DatabaseConnection db;

        private List<Troc> trocList = new List<Troc>();
        public List<Troc> gettrocList { get; set; }
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
        public List<Troc> QueryList()
        {
            //Query to execute 
            string query = "SELECT BP.*, USER.eb_user_lastname, USER.eb_user_firstname, CBP.eb_category_troc, SCBP.eb_sub_category_troc FROM etudibox.eb_troc AS BP LEFT JOIN etudibox.eb_user AS USER ON USER.eb_user_id = BP.eb_user_id LEFT JOIN etudibox.eb_category_troc AS CBP ON CBP.eb_category_troc_id = BP.eb_troc_category_id LEFT JOIN etudibox.eb_sub_category_troc AS SCBP ON SCBP.eb_sub_category_troc_id = BP.eb_troc_sub_category_id AND SCBP.eb_category_troc_id = CBP.eb_category_troc_id;";
            QueryResult dataList = db.Query(query);

            // Initialisation & Declaration
            int nbRow = dataList.GetRowCount();
            int nbField = dataList.GetFieldCount();
            String[] idtroc = new String[nbRow];
            String[] title = new String[nbRow];
            String[] imagePath = new String[nbRow];
            String[] user_id = new String[nbRow];
            String[] category = new String[nbRow];
            String[] subCategory = new String[nbRow];
            String[] body = new String[nbRow];
            String[] lastname = new String[nbRow];
            String[] firstname = new String[nbRow];
            DateTime[] date = new DateTime[nbRow];

            //We look over the rows
            for (int i = 0; i < nbRow; i++)
            {
                //We look over the fields of a given row 
                for (int j = 0; j < nbField; j++)
                {
                    //We retrieve the value of a field
                    Object value = dataList.GetValue(i, j);

                    switch (j)
                    {
                        case 0:
                            idtroc[i] = Convert.ToString(value);
                            break;
                        case 1:
                            title[i] = Convert.ToString(value);
                            break;
                        case 2:
                            imagePath[i] = Convert.ToString(value);
                            break;
                        case 3:
                            user_id[i] = Convert.ToString(value);
                            break;
                        case 5:
                            body[i] = Convert.ToString(value);
                            break;
                        case 6:
                            date[i] = Convert.ToDateTime(value);
                            break;
                        case 7:
                            lastname[i] = Convert.ToString(value);
                            break;
                        case 8:
                            firstname[i] = Convert.ToString(value);
                            break;
                        case 9:
                            category[i] = Convert.ToString(value);
                            break;
                        case 10:
                            subCategory[i] = Convert.ToString(value);
                            break;
                        default:
                            break;
                    }
                }
                this.trocList.Add(new Troc(idtroc[i], new Member(user_id[i], lastname[i], firstname[i]), title[i], body[i], category[i], subCategory[i], imagePath[i], date[i]));

                //Reinitialization (à faire)
            }
            return trocList;
        }
    }
}