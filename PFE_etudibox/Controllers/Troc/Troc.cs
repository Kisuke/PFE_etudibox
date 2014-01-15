using PFE_etudibox.Controllers.Inscription;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Windows.Forms;

namespace PFE_etudibox.Models.TrocVO
{
    public class Troc
    {
        public String idTroc { get; private set; }
        public Member member { get; private set; }
        public String titleTroc { get; private set; }
        public String bodyTroc { get; private set; }
        public String categoryTroc { get; private set; }
        public String subCategoryTroc { get; private set; }
        public String imagePathTroc { get; private set; }
        public DateTime dateTroc { get; private set; }

        public Troc(String idTroc, Member member, String titleTroc, String bodyTroc, String categoryTroc, String subCategoryTroc, String imagePathTroc, DateTime dateTroc)
        {
            this.idTroc = idTroc;
            this.member = member;
            this.titleTroc = titleTroc;
            this.bodyTroc = bodyTroc;
            this.categoryTroc = categoryTroc;
            this.subCategoryTroc = subCategoryTroc;
            this.imagePathTroc = imagePathTroc;
            this.dateTroc = dateTroc;
        }

        public Troc() { }

    }
}