<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Menu_Transport.Menu_TransportModel>" %>

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
     <div id='Menu_Transport1'>
        <img src="Styles/Images/ratp.jpg" style="height: 15%; width: 15%; margin-left: 2%; border: none; border-radius: 21%;margin-top:2%;" /><a href="Transport" target="_blank" title="Forfait imagine R"><h3 style="margin-top:-5% ; margin-left:19%"><span>Forfait imagine R</span></h3></a> 
        <br /><br />
        <span>Le forfait imagine R annuel réservé aux élèves et étudiants de moins de 26 ans et permet de voyager à volonté toute l’année à l’intérieur des zones choisies.
</span> 
        <br/><br/> 
         </div>
 <br/> 
    <div id='Menu_Transport2'>
        <img src="Styles/Images/velib.jpg" style="height: 15%; width: 15%; margin-left: 2%; border: none; border-radius: 21%;margin-top:2%;" /><a href="Velib" target="_blank" title="Carte Velib"><h3 style="margin-top:-5% ; margin-left:19%"><span>Carte Velib</span></h3></a> 
        <br /><br />
        <span>Prendre un vélo dans une station, le déposer dans une autre, Vélib’ est un système de location en libre-service simple à utiliser, disponible 24 heures sur 24 et 7 jours sur 7.
</span> 
        <br/><br/> 
         </div>
    <div id='Menu_Transport3'>
        <img src="Styles/Images/autolib.jpg" style="height: 15%; width: 15%; margin-left: 2%; border: none; border-radius: 21%;margin-top:2%;" /><a href="Autolib" target="_blank" title="Abonnement AutoLib"><h3 style="margin-top:-5% ; margin-left:19%"><span>Abonnement AutoLib</span></h3></a> 
        <br /><br />
        <span>Autolib’ est le premier service de location courte durée de voitures 100% électriques en libre-service sans retour obligé au point de départ. 
</span> 
        <br/><br/> 
         </div>
    <div id='Menu_Transport4'>
        <img src="Styles/Images/sncf.png" style="height: 10%; width: 10%; margin-left: 2%; border: none; border-radius: 21%;margin-top:2%;" /><a href="SNCF" target="_blank" title="SNCF Carte Jeune"><h3 style="margin-top:-8% ; margin-left:15%"><span>SNCF Carte Jeune</span></h3></a> 
        <br /><br />
        <span><br />Voyagez à tout moment et bénéficiez jusqu’à 60% de réduction grâce à votre carte Jeune 18-27, accessible de 18 à 27 ans pour des voyages jusqu'à la veille des 28 ans.
</span> 
        <br/><br/> 
         </div>
</asp:Content>

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
