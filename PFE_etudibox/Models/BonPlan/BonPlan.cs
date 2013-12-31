using PFE_etudibox.Controllers.Inscription;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PFE_etudibox.Models.BonPlanModel 
{
    public class BonPlan
    {
        String id_bonplan { get; set; }
        Member member { get; set; }
        String title_bonplan { get; set; }
        String corps_bonplan { get; set; }
        String type_bonplan { get; set; }
        String imagePath_bonplan { get; set; }
        DateTime date_bonplan { get; set; }

        public BonPlan(String id_bonplan, Member member, String title_bonplan, String corps_bonplan, String type_bonplan, String imagePath_bonplan, DateTime date_bonplan)
        {
            this.id_bonplan = id_bonplan;
            this.member = member;
            this.corps_bonplan = corps_bonplan;
            this.title_bonplan = title_bonplan;
            this.type_bonplan = type_bonplan;
            this.imagePath_bonplan = imagePath_bonplan;
            this.date_bonplan = date_bonplan;
        }

        public BonPlan() {} 

        /**
        * Name : LoadImage
        * Function : Load an image thanks to the image path
        * Input :
        * Output: 
        * */
        protected void LoadImage()
        {

        }


    }
}