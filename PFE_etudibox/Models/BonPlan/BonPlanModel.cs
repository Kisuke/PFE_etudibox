using PFE_etudibox.Controllers.Inscription;
using PFE_etudibox.Models.Base;
using PFE_etudibox.VO.BonPlanVO;
using PFE_etudibox.VO.MemberVO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PFE_etudibox.Models.BonPlanModel
{
    public class BonPlanModel
    {
        DatabaseConnection db;

        private List<BonPlan> bonPlanList = new List<BonPlan>();
        public List<BonPlan> getbonPlanList { get; set; }
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
        public List<BonPlan> QueryList(int categoryId, int subCategoryId) 
        {
            //Query to execute 
            string query = "SELECT BP.*, USER.eb_user_lastname, USER.eb_user_firstname, USER.eb_user_email, CBP.eb_category_bon_plan, SCBP.eb_sub_category_bon_plan FROM etudibox.eb_bon_plan AS BP LEFT JOIN etudibox.eb_user AS USER ON USER.eb_user_id = BP.eb_user_id LEFT JOIN etudibox.eb_category_bon_plan AS CBP ON CBP.eb_category_bon_plan_id = BP.eb_bon_plan_category_id LEFT JOIN etudibox.eb_sub_category_bon_plan AS SCBP ON SCBP.eb_sub_category_bon_plan_id = BP.eb_bon_plan_sub_category_id AND SCBP.eb_category_bon_plan_id = CBP.eb_category_bon_plan_id";

            //On ajoute où non des critères supplémentaires de sélection  à la reqête (catégorie, sous catégorie)
            if (categoryId > 0 &&  subCategoryId==0)
            {
                query += " WHERE BP.eb_bon_plan_category_id= "+categoryId+" ORDER BY BP.eb_bon_plan_date DESC;";
            }
            else if (categoryId > 0 && subCategoryId > 0)
            {
                query += " WHERE BP.eb_bon_plan_category_id= " + categoryId + " AND BP.eb_bon_plan_sub_category_id= " + subCategoryId + " ORDER BY BP.eb_bon_plan_date DESC;";
            }
            else
            {
                query += " ORDER BY BP.eb_bon_plan_date DESC;";
            }
            QueryResult dataList = db.Query(query);

            // Initialisation & Declaration
            int nbRow = dataList.GetRowCount();
            int nbField = dataList.GetFieldCount();
            String[] idbonplan = new String[nbRow];
            String[] title = new String[nbRow]; 
            String[] imagePath = new String[nbRow]; 
            String[] user_id = new String[nbRow];
            String[] idCategory = new String[nbRow];
            String[] idSubCategory = new String[nbRow]; 
            String[] category = new String[nbRow];
            String[] subCategory = new String[nbRow]; 
            String[] body = new String[nbRow]; 
            String[] lastname = new String[nbRow]; 
            String[] firstname = new String[nbRow];
            String[] email = new String[nbRow]; 
            DateTime[] date = new DateTime[nbRow];
            String[] link = new String[nbRow]; 
            
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
                            idbonplan[i] = Convert.ToString(value);
                            break;
                        case 1:
                            title[i] = Convert.ToString(value);
                            break;
                        case 2:
                            link[i] = Convert.ToString(value);
                            break;
                        case 3:
                            body[i] = Convert.ToString(value);
                            break;
                        case 4:
                            date[i] = Convert.ToDateTime(value);
                            break;
                        case 5:
                            imagePath[i] = Convert.ToString(value);
                            break;
                        case 6:
                            user_id[i] = Convert.ToString(value);
                             break;
                        case 7:
                             idCategory[i] = Convert.ToString(value);
                             break;
                        case 8:
                             idSubCategory[i] = Convert.ToString(value);
                             break;
                        case 9:
                            lastname[i] = Convert.ToString(value);
                            break;
                        case 10:
                            firstname[i] = Convert.ToString(value);
                            break;
                        case 11:
                            email[i] = Convert.ToString(value);
                            break;
                        case 12:
                            category[i] = Convert.ToString(value);
                            break;
                        case 13:
                            subCategory[i] = Convert.ToString(value);
                            break;
                        default:
                             break;
                     }
                 }
                 this.bonPlanList.Add(new BonPlan(idbonplan[i], new Member(user_id[i], lastname[i], firstname[i], email[i]), title[i], body[i], idCategory[i], category[i], idSubCategory[i], subCategory[i], imagePath[i],  link[i], date[i]));

                //Reinitialization (à faire)
            }
            return bonPlanList;
        }

        public void Delete(int idBonPlan)
        {
            //Query to execute 
            string query = "DELETE FROM etudibox.eb_bon_plan WHERE id_eb_bon_plan = " + idBonPlan + " ;";
            QueryResult dataList = db.Query(query);
        }
    }
}