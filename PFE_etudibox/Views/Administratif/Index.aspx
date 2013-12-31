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



<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <h1>Facilite toi la vie !</h1>
        
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LateralContent" runat="server">
    <div>
        <br />
        <h3>Catégories</h3>

        <ul class="niveau1">
            <li class="menuAdmin">Aide
                <ul class="niveau2">
                    <li class="menuAdmin">Bourses de l'Efrei</li>
                    <li class="menuAdmin">Bourses régionales</li>
                    <li class="menuAdmin">Bourses gouvernementales</li>
                    <li class="menuAdmin">Autres types de bourses</li>
                </ul>
            </li>
            <li class="menuAdmin">Prêt
                <ul class="niveau2">
                    <li class="menuAdmin">Prêt étudiant par Banque</li>
                    <li class="menuAdmin">Prêt Permis à 1 euros</li>
                    <li class="menuAdmin">Autres prêts</li>
                </ul>
            </li>
            <li class="menuAdmin">
                Impôt
            </li>
            <li class="menuAdmin">
                Stage / VIE
                <ul class="niveau2">
                    <li class="menuAdmin">Site de l'Efrei</li>
                    <li class="menuAdmin">Créer un profil sur Viadéo, Linkedin, Monster</li>
                    <li class="menuAdmin">Vie Ubifrance, Civiweb</li>
                </ul>
            </li>
            <li class="menuAdmin">
                Transport
                <ul class="niveau2">
                    <li class="menuAdmin">Carte Imagine R</li>
                    <li class="menuAdmin">Carte Velib</li>
                    <li class="menuAdmin">Abonnement AutoLib</li>
                    <li class="menuAdmin">SNCF Carte jeune</li>
                </ul>
           </li>
           <li class="menuAdmin">
                Sécurité sociale
                <ul class="niveau2">
                  <li class="menuAdmin">SMEREP</li>
                  <li class="menuAdmin">LMDE</li>
                </ul>
           </li>
           <li class="menuAdmin">
                Logement
                <ul class="niveau2">
                    <li class="menuAdmin">CAF/APL</li>
                    <li class="menuAdmin">CROUS</li>
                </ul>
            </li>
            <li class="menuAdmin"> 
                Etudiant + de 25 ans
                <ul class="niveau2">
                    <li class="menuAdmin">Vos droits (CMU,RSA)</li>
                    <li class="menuAdmin">Ce qui va changer</li>
                </ul>
            </li>
        </ul>
        
    </div>
</asp:Content>