<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Administratif.AdministratifModel>" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if( Session["username"] == null)
        {
            Response.Redirect("Login");
        }
    }
    
</script>
<asp:Content ID="Content2" ContentPlaceHolderID="LateralContent" runat="server">
<link href="Administratif/Aide.aspx" rel="stylesheet" />

<div id='cssmenu'>
<ul>
   <li class='has-sub'><a href='Administratif/Index.aspx'><span>Aide</span></a>
      <ul>
         <li><a href='Administratif/Aide'><span>Bourses de l'Efrei</span></a></li>
         <li><a href='#'><span>Bourses régionales</span></a></li>
         <li class='last'><a href='#'><span>Bourses gouvernementales</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='#'><span>Prêt</span></a>
      <ul>
         <li><a href='#'><span>Prêt Etudiant</span></a></li>
         <li><a href='#'><span>Prêt Permis A 1euros</span></a></li>
         <li class='last'><a href='#'><span>Autres Prêts</span></a></li>
      </ul>
   </li>
    <li><a href='#'><span>Impôt</span></a></li>
   <li class='has-sub'><a href='#'><span>Stage-VIE</span></a>
      <ul>
         <li><a href='#'><span>Efrei</span></a></li>
          <li><a href='#'><span>Créer un profil sur Viadéo, Linkedin, Monster</span></a></li>
         <li class='last'><a href='#'><span>Vie Ubifrance, Civiweb</span></a></li>
      </ul>
   </li>
    <li class='has-sub'><a href='#'><span>Transport</span></a>
      <ul>
         <li><a href='#'><span>Carte Imagine R</span></a></li>
          <li><a href='#'><span>Carte Velib</span></a></li>
          <li><a href='#'><span>Abonnement AutoLib</span></a></li>
         <li class='last'><a href='#'><span>SNCF Carte jeune</span></a></li>
      </ul>
   </li>
    <li class='has-sub'><a href='#'><span>Sécurité sociale</span></a>
      <ul>
         <li><a href='#'><span>SMEREP</span></a></li>
         <li class='last'><a href='#'><span>LMDE</span></a></li>
      </ul>
   </li>
    <li class='has-sub'><a href='#'><span>Logement</span></a>
      <ul>
         <li><a href='#'><span>CAF/APL</span></a></li>
         <li class='last'><a href='#'><span>CROUS</span></a></li>
      </ul>
   </li>
    <li class='has-sub'><a href='#'><span>Etudiant + de 25 ans</span></a>
      <ul>
         <li><a href='#'><span>Vos droits(CMU,RSA)</span></a></li>
         <li class='last'><a href='#'><span>Ce qui va changer</span></a></li>
      </ul>
   </li>
   <li class='last'><a href='#'><span>Contact</span></a></li>
</ul>
</div>
       
</asp:Content>


