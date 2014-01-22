using PFE_etudibox.VO.MemberVO;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Windows.Forms;

namespace PFE_etudibox.VO.TrocVO
{
    public class Troc
    {
        public String idTroc { get; private set; }
        public Member member { get; private set; }
        public String titleTroc { get; private set; }
        public String bodyTroc { get; private set; }
        public String idCategoryTroc { get; private set; }
        public String categoryTroc { get; private set; }
        public String idSubCategoryTroc { get; private set; }
        public String subCategoryTroc { get; private set; }
        public String imagePathTroc { get; private set; }
        public DateTime dateTroc { get; private set; }

        public Troc(String idTroc, Member member, String titleTroc, String bodyTroc, String idCategoryTroc, String categoryTroc, String idSubCategoryTroc, String subCategoryTroc, String imagePathTroc, DateTime dateTroc)
        {
            this.idTroc = idTroc;
            this.member = member;
            this.titleTroc = titleTroc;
            this.bodyTroc = bodyTroc;
            this.idCategoryTroc = idCategoryTroc;
            this.categoryTroc = categoryTroc;
            this.idSubCategoryTroc = idSubCategoryTroc;
            this.subCategoryTroc = subCategoryTroc;
            this.imagePathTroc = imagePathTroc;
            this.dateTroc = dateTroc;
        }

        public Troc() { }

    }
}