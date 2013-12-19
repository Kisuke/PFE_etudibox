<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Administratif.AdministratifModel>" %>

<script runat="server">
    
    
</script>



<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <br />
        <h1>Facilite toi la vie !</h1>
        
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
      ul.niveau1 ul {display: none; position: absolute; left: 144px; top: -1px; margin:0px; padding: 0px; border: 1px solid grey;}
      li {list-style-type: none; position: relative; width: 140px; background-color: #E0E0E0; padding: 2px; margin: 0px}
      ul.niveau2 li:hover {background-color: #FFFF70;}
      li:hover ul.niveau2 {display: block}
    </style>
    <div>
        <br />
        <h3>Catégories</h3>

        <ul class="niveau1">
            <li>Aide
                <ul class="niveau2">
                    <li>Bourses de l'Efrei</li>
                    <li>Bourses régionales</li>
                    <li>Bourses gouvernementales</li>
                    <li>Autres types de bourses</li>
                </ul>
            </li>
            <li>Prêt
                <ul class="niveau2">
                    <li>Prêt étudiant par Banque</li>
                    <li>Prêt Permis à 1 euros</li>
                    <li>Autres prêts</li>
                </ul>
            </li>
                Impôt
            </li>
            <li>
                Stage / VIE
                <ul class="niveau2">
                    <li>Site de l'Efrei</li>
                    <li>Créer un profil sur Viadéo, Linkedin, Monster</li>
                    <li>Vie Ubifrance, Civiweb</li>
                </ul>
            </li>
            <li>
                Transport
                <ul class="niveau2">
                    <li>Carte Imagine R</li>
                    <li>Carte Velib</li>
                    <li>Abonnement AutoLib</li>
                    <li>SNCF Carte jeune</li>
                </ul>
           </li>
           <li>
                Sécurité sociale
                <ul class="niveau2">
                  <li>SMEREP</li>
                  <li>LMDE</li>
                </ul>
           </li>
           <li>
                Logement
                <ul class="niveau2">
                    <li>CAF/APL</li>
                    <li>CROUS</li>
                </ul>
            </li>
            <li> 
                Etudiant + de 25 ans
                <ul class="niveau2">
                    <li>Vos droits (CMU,RSA)</li>
                    <li>Ce qui va changer</li>
                </ul>
            </li>
        </ul>
        
    </div>
</asp:Content>