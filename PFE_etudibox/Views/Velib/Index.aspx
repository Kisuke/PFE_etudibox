<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Velib.VelibModel>" %>

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
        <img src="Styles/Images/velib.jpg" style="height: 15%; width: 15%; margin-left: 2%; border: none; border-radius: 21%;margin-top:2%;" /><h3 style="margin-top:-5% ; margin-left:19%"><span>Carte Velib</span></h3> 
        <br /><br />
        <span>Prendre un vélo dans une station, le déposer dans une autre, Vélib’ est un système de location en libre-service simple à utiliser, disponible 24 heures sur 24 et 7 jours sur 7.
</span>
<br />
<h4>Retirer un vélo</h4>
<img src="Styles/Images/Retirer_velo.png" style="height: 8%; width: 8%; margin-left: 2%; border: none; border-radius: 21%;margin-top:2%;" />Pour louer un vélo, identifiez-vous sur la borne, accédez au menu et choisissez un vélo parmi ceux proposés à l'écran. 
<br />GAGNEZ DU TEMPS ET ABONNEZ-VOUS À L'ANNÉE ! 
<br />Grâce à la carte annuelle Vélib' et au passe NAVIGO©, vous pouvez retirer un vélo directement sur le point d'attache.
<br />
<h4>Restituer son vélo</h4> 
<img src="Styles/Images/Restituer_Velo.png" style="height: 8%; width: 8%; margin-left: 2%; border: none; border-radius: 21%;margin-top:2%;" /> 
Une fois votre trajet terminé, accrochez le vélo sur un point d'attache libre dans n'importe quelle station Vélib’.
<br />Attendez quelques instants, un signal sonore et un voyant lumineux vous confirmeront que le vélo a bien été restitué.
<br />
<img src="Styles/Images/Borne_velo.png" style="height: 10%; width: 10%; margin-left: 2%; border: none; border-radius: 21%;margin-top:2%;" />
Si vous avez un doute sur la bonne restitution de votre vélo, le service Vélib’ vous invite à vous identifier à la borne. Si votre vélo est correctement verrouillé, il vous est possible d’imprimer une attestation de bonne restitution. Dans le cas contraire, le message suivant est indiqué « vous avez un vélo encours de location ».
<br />Au moindre doute appelez Allo Vélib' au 01 30 79 79 30.
 </div>
<div id="VelibCorp">
<h3 style="color: rgb(255, 1, 133);font-size: 20px;">Les abonnements Annuels</h3><img src="Styles/Images/abo_ann.jpg" style="height: 10%; width: 10%; margin-left: 2%; border: none; border-radius: 21%;margin-top:10%" /> 
<h4 style="color: rgb(240, 0, 115);font-weight: bold;font-size: 16px;margin-left:15%;margin-top:-15%">Vélib' Classique&nbsp; &nbsp;29€</h4>
<h5 style="margin-left:15%;">Pour seulement 29 € par an, cet abonnement vous donne accès pendant une année au service Vélib' avec un nombre de trajets illimités et les 30 premières minutes offertes pour chacun de vos voyages.</h5>
<a href="https://abo-paris.cyclocity.fr/subscribe/start" target="_blank" title="Je m'abonne"style="margin-left:15%;"><span>Je m'abonne</span></a>   
<h4 style="color: rgb(240, 0, 115);font-weight: bold;font-size: 16px;margin-left:15%;">Vélib' Passion&nbsp; &nbsp;39€</h4>
<h5 style="margin-left:15%;">Pour 39 € par an, cet abonnement vous donne accès pendant une année au service Vélib' avec un nombre de trajets illimités et les 45 premières minutes offertes pour chacun de vos voyages.</h5>
<a href="https://abo-paris.cyclocity.fr/subscribe/start" target="_blank" title="Je m'abonne" style="margin-left:15%;"><span>Je m'abonne</span></a>     
</div>   
<div id="VelibCorp2">
<h3 style="color: rgb(255, 1, 133);font-size: 20px;">Les offres jeunes</h3><img src="Styles/Images/abo_jeune.png" style="height: 10%; width: 10%; margin-left: 2%; border: none; border-radius: 21%;margin-top:10%" /> 
<h4 style="color: rgb(240, 0, 115);font-weight: bold;font-size: 16px;margin-left:15%;margin-top:-15%">Vélib' Passion 14-26&nbsp; &nbsp;29€ au lieu de 39€</h4>
<h5 style="margin-left:15%;">Pour seulement 29 € par an, cet abonnement vous donne accès pendant une année au service Vélib' avec un nombre de trajets illimités. Les 15 minutes supplémentaires de gratuité seront activées dès la validation de votre justificatif (photocopie de la carte d'identité) que vous pouvez joindre en ligne.</h5>
<a href="https://abo-paris.cyclocity.fr/subscribe/start" target="_blank" title="Je m'abonne"style="margin-left:15%;"><span>Je m'abonne</span></a>   
<h4 style="color: rgb(240, 0, 115);font-weight: bold;font-size: 16px;margin-left:15%;">Vélib' Passion 14-26 Boursiers&nbsp; &nbsp;19€ au lieu de 39€</h4>
<h5 style="margin-left:15%;">Pour seulement 19 € par an, cet abonnement vous donne accès pendant une année au service Vélib' avec un nombre de trajets illimités. Votre abonnement sera activé dès la validation de votre justificatif (attestation de boursier) que vous pouvez joindre en ligne.</h5>
<a href="https://abo-paris.cyclocity.fr/subscribe/start" target="_blank" title="Je m'abonne" style="margin-left:15%;"><span>Je m'abonne</span></a>     
<h4 style="color: rgb(240, 0, 115);font-weight: bold;font-size: 16px;margin-left:15%;">Vélib’ Passion 16-25 ans Jeunes en Insertion&nbsp; &nbsp;19€</h4>
<h5 style="margin-left:15%;">Pour seulement 19 € par an, cet abonnement vous donne accès pendant une année au service Vélib' avec un nombre de trajets illimités.
<br />Pour pouvoir souscrire cette offre, vous devez :
<br />Avoir entre 16 et 25 ans inclus 
<br />Résider en Île-de-France 
<br />Être sorti du système scolaire et être sans emploi 
<br />Être stagiaire de la formation professionnelle continue 
<br />Être engagé dans l’un des dispositifs suivants agrées par la Mairie de Paris : 
<br />Espace Dynamique d’Insertion,  
<br />Mission Locale de Paris,  
<br />Ecole de la Deuxième Chance.
<br />Votre abonnement sera activé dès la validation des pièces justificatives suivantes que vous pouvez joindre en ligne:
<br />Photocopie d’une pièce d’identité 
<br />Attestation d’inscription à l’un des dispositifs ci-dessus 
<br />Déclaration sur l’honneur </h5>
<a href="https://abo-paris.cyclocity.fr/subscribe/start" target="_blank" title="Je m'abonne" style="margin-left:15%;"><span>Je m'abonne</span></a></div>
<br />
<div id="VelibCorp3">
<h3 style="color: rgb(255, 1, 133);font-size: 20px;">Offre Sociale</h3><img src="Styles/Images/abo_soc.png" style="height: 5%; width: 5%; margin-left: 2%; border: none; border-radius: 21%;margin-top:5%" /> 
<h4 style="color: rgb(240, 0, 115);font-weight: bold;font-size: 16px;margin-left:15%;margin-top:-10%">Vélib' Solidarité&nbsp; &nbsp;19€ au lieu de 39€</h4>
<h5 style="margin-left:15%;">Cet abonnement est ouvert à toutes personnes bénéficiant de la gratuité des transports à Paris. Pour seulement 19 € par an, cet abonnement vous donne accès pendant une année au service Vélib' avec un nombre de trajets illimités et aux 45 premières minutes offertes à chaque déplacement.Votre abonnement sera activé dès la validation de votre justificatif (attestation délivrée par le STIF) que vous pouvez joindre en ligne.</h5>
<a href="https://abo-paris.cyclocity.fr/subscribe/start" target="_blank" title="Je m'abonne"style="margin-left:15%;"><span>Je m'abonne</span></a>        
</div>
<br />
<div id="VelibCorp4">
<h3 style="color: rgb(255, 1, 133);font-size: 20px;">Les Tickets Courte Durée</h3><img src="Styles/Images/abo-ticket.png" style="height: 10%; width: 10%; margin-left: 2%; border: none; border-radius: 21%;margin-top:10%" /> 
<h4 style="color: rgb(240, 0, 115);font-weight: bold;font-size: 16px;margin-left:15%;margin-top:-13%">Ticket 1 jour&nbsp; &nbsp;1,70€</h4>
<h5 style="margin-left:15%;">Pour 1,70€, le ticket 1 jour donne accès pendant 24h au service Vélib' avec les 30 premières minutes offertes à chaque déplacement. Au-delà de la première demi-heure, les tarifs de location s’appliquent.</h5>
<a href="https://abo-paris.cyclocity.fr/subscribe/start" target="_blank" title="Je m'abonne"style="margin-left:15%;"><span>Je m'abonne</span></a>        
<h4 style="color: rgb(240, 0, 115);font-weight: bold;font-size: 16px;margin-left:15%;">Ticket 7 jours&nbsp; &nbsp;8€</h4>
<h5 style="margin-left:15%;">Pour 8€, le ticket 7 jours donne accès pendant une semaine au service Vélib' avec les 30 premières minutes offertes à chaque déplacement. Au-delà de la première demi-heure, les tarifs de location s’appliquent.</h5>
<a href="https://abo-paris.cyclocity.fr/subscribe/start" target="_blank" title="Je m'abonne"style="margin-left:15%;"><span>Je m'abonne</span></a>        
<h4 style="color: rgb(240, 0, 115);font-weight: bold;font-size: 16px;margin-left:15%;">Vélib' Visit&nbsp; &nbsp;A dcouvrir</h4>
<h5 style="margin-left:15%;">Préparez à l’avance votre séjour à Paris grâce à cette offre sur mesure qui vous permet, une semaine à l’avance, d’acheter vos tickets de courte durée.</h5>
<a href="http://blog.velib.paris.fr/blog/paris-velib/sortir/plus-de-veliberte-en-ligne-pour-les-touristes-et-usagers-occasionnels/" target="_blank" title="En savoir plus"style="margin-left:15%;"><span>En savoir plus</span></a>
</div>
<br />    

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

