using PFE_etudibox.Controllers.Inscription;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Windows.Forms;

namespace PFE_etudibox.Models.BonPlanVO  
{
    public class BonPlan
    {
        public String idBonplan { get; private set; }
        public Member member { get; private set; }
        public String titleBonplan { get; private set; }
        public String bodyBonPlan { get; private set; }
        public String categoryBonplan { get; private set; }
        public String subCategoryBonplan { get; private set; }
        public String imagePathBonplan { get; private set; }
        public DateTime dateBonplan { get; private set; }
        public String linkBonplan { get; private set; }

        public BonPlan(String idBonplan, Member member, String titleBonplan, String bodyBonPlan, String categoryBonplan, String subCategoryBonplan, String imagePathBonplan, String linkBonplan, DateTime dateBonplan)
        {
            this.idBonplan = idBonplan;
            this.member = member;
            this.titleBonplan = titleBonplan;
            this.bodyBonPlan = bodyBonPlan;
            this.categoryBonplan = categoryBonplan;
            this.subCategoryBonplan = subCategoryBonplan;
            this.imagePathBonplan = imagePathBonplan;
            this.linkBonplan = linkBonplan;
            this.dateBonplan = dateBonplan;
        }

        public BonPlan() {} 

    }
}