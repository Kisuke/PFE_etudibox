<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.SNCF.SNCFModel>" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("Login");
        }
    }
    
</script>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
       <div id='Menu_Transport2'>
        <img src="Styles/Images/sncf.png" style="height: 15%; width: 15%; margin-left: 2%; border: none; border-radius: 21%;margin-top:2%;color:rgb(0, 157, 223)" /><h3 style="margin-top:-10% ; margin-left:19%">SNCF Carte Jeune</h3>
        <br /><br />
        <h5>Voyagez à tout moment et bénéficiez jusqu’à 60% de réduction grâce à votre carte Jeune 18-27, accessible de 18 à 27 ans pour des voyages jusqu'à la veille des 28 ans.
Offre soumise à conditions.
<br /><br /><a href="http://www.programmefid.com/dynamic/public/cardpub/initCard.do?ID_WEB=VSC&callback_url=http://www.voyages-sncf.com&typeCarte=YOUNG" target="_blank" title="Je commande"><span>Je commande</span></a>
        </h5> </div>
<div id="SNCF">
<br /> <h3 style ="color: rgb(161, 0, 107)">Des réductions garanties à chaque voyage </h3>
Envie de bons plans voyages toute l’année ? Votre carte de réduction Jeune 18-27 vous permet de bénéficier de tarifs réduits sur vos trajets en TGV, TER et Intercités. Elle coûte 50€* pour un an.
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;margin-left:5%">   25% de réduction garantis sur tous les trains, en réservant à tout moment, jusqu’à la dernière place disponible.
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;margin-left:5%">   Jusqu’à 60% de réduction, si vous anticipez votre voyage, sur vos trajets avec TGV et Intercités à réservation obligatoire.
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;margin-left:5%">   50% de réduction sur vos trajets TER et Intercités sans réservation obligatoire.
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;margin-left:5%">   Profitez de billets de dernière minute réservés aux détenteurs de la carte Jeune 18-27.  
<br /><br />*Tarif en vigueur au 29/10/2013, hors promotions. Pour les clients ayant 27 ans révolus lors de l'achat, la durée de validité est limitée à la veille du 28e anniversaire.
<br /><br /><br />
 <h3 style ="color: rgb(161, 0, 107)">Amortissement de votre carte</h3>
<img src="Styles/Images/carte.jpg" style="margin-left: 18%; border: none; border-radius: 21%;margin-top:2%;color:rgb(0, 157, 223)" />
<br />Votre carte sera généralement amortie en 2 aller-retour.
<br />(1) Prix en période normale (moindre affluence)
<br />(2) Tarif Loisir Réduit. Hors tarifs non échangeables, non remboursables
<br />(3) Prix calculé avec la réduction maximale de 60% sur le Plein Tarif Loisir, hors prestations supplémentaires payantes, pour les trains à réservation obligatoire TGV et Intercités (hors Ouigo), ou 50% sur le tarif normal pour les trains sans réservation obligatoire (TER et Intercités) et soumis au Calendrier Voyageurs.

</div></asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="LateralContent" runat="server">
    <br/>
    <div id='cssmenu'>
        <ul>
            <li class='has-sub'><a href="Administratif?id=1"><span>Aide</span></a>
                <ul>
                    <li><a href='Administratif?id=11'><span>Bourses de l'Efrei</span></a></li>
                    <li><a href='Administratif?id=12'><span>Bourses régionales</span></a></li>
                    <li class='last'><a href='Administratif?id=13'><span>Bourses gouvernementales</span></a></li>
                </ul>
            </li>
            <li class='has-sub'><a href='Administratif?id=2'><span>Prêt</span></a>
                <ul>
                    <li><a href='Administratif?id=21'><span>Prêt Etudiant</span></a></li>
                    <li><a href='Administratif?id=22'><span>Prêt Permis A 1euros</span></a></li>
                    <li class='last'><a href='Administratif?id=23'><span>Autres Prêts</span></a></li>
                </ul>
            </li>
            <li><a href='Administratif?id=3'><span>Impôt</span></a></li>
            <li class='has-sub'><a href='Administratif?id=4'><span>Stage-VIE</span></a>
                <ul>
                    <li><a href='Administratif?id=41'><span>Efrei</span></a></li>
                    <li><a href='Administratif?id=42'><span>Créer un profil sur Viadéo, Linkedin, Monster</span></a></li>
                    <li class='last'><a href='Administratif?id=43'><span>Vie Ubifrance, Civiweb</span></a></li>
                </ul>
            </li>
            <li class='has-sub'><a href='Menu_Transport'><span>Transport</span></a>
                <ul>
                    <li><a href='Transport'><span>Carte Imagine R</span></a></li>
                    <li><a href='Velib'><span>Carte Velib</span></a></li>
                    <li><a href='Autolib'><span>Abonnement AutoLib</span></a></li>
                    <li class='last'><a href='SNCF'><span>SNCF Carte jeune</span></a></li>
                </ul>
            </li>
            <li class='has-sub'><a href='Administratif?id=6'><span>Sécurité sociale</span></a>
                <ul>
                    <li><a href='Administratif?id=61'><span>SMEREP</span></a></li>
                    <li class='last'><a href='Administratif?id=62'><span>LMDE</span></a></li>
                </ul>
            </li>
            <li class='has-sub'><a href='Administratif?id=7'><span>Logement</span></a>
                <ul>
                    <li><a href='Administratif?id=71'><span>CAF/APL</span></a></li>
                    <li class='last'><a href='Administratif?id=72'><span>CROUS</span></a></li>
                </ul>
            </li>
            <li class='has-sub'><a href='Administratif?id=8'><span>Etudiant + de 25 ans</span></a>
                <ul>
                    <li><a href='Administratif?id=81'><span>Vos droits(CMU,RSA)</span></a></li>
                    <li class='last'><a href='Administratif?id=82'><span>Ce qui va changer</span></a></li>
                </ul>
            </li>
        </ul>
    </div>

</asp:Content>

