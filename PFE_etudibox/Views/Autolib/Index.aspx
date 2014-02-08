<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Autolib.AutolibModel>" %>

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
        <img src="Styles/Images/autolib.jpg" style="height: 15%; width: 15%; margin-left: 2%; border: none; border-radius: 21%;margin-top:2%;color:rgb(0, 157, 223)" /><h3 style="margin-top:-5% ; margin-left:19%"><span>Abonnement Autolib</span></h3> 
        <br /><br />
        <h5 style=" color:rgb(0, 157, 223)">Autolib’ est le premier service de location courte durée de voitures 100% électriques en libre-service sans retour obligé au point de départ. 
<br />Une révolution de vos modes de transport qui vous apporte liberté et sérénité. Avec Autolib’, vous louez dans les 46 communes concernées une Bluecar pour circuler dans toute l'Île-de-France. Simple et écologique. 
</h5>
<br /><h3 style=" color :rgb(227, 0, 141)">Autolib’, comment ça marche ?</h3>   
        <br/>
         </div>
<div id="Autolib2">
<h3 style=" color :rgb(227, 0, 141)">1- Abonnement</h3>
    <h3 style="color: rgb(227, 0, 141);font-size: 20px;margin-top:6%">Autolib' 1 An</h3>
<h5 style="margin-left:15%;margin-left:15%;margin-top:-8%;">Autolib’ 1 an est recommandé aux personnes qui veulent disposer d’une voiture à tout moment et tout au long de l’année au tarif le plus avantageux.</h5>
<h4 style="color: rgb(240, 0, 115);font-weight: bold;font-size: 16px;margin-left:15%;">120€/an (soit 10€/mois durant 1 an) +5,5€ par 1/2 heure d'utilisation</h4>
<a href="https://www.autolib.eu/subscribe/fill_profile/" target="_blank" title="Je choisis cette offre"style="margin-left:15%;"><span>Je choisis cette offre</span></a>   
<br /><br />
<h3 style="color: rgb(0, 157, 224);font-size: 20px;margin-top:10%">Autolib' 1 Mois</h3>
<h5 style="margin-left:15%;margin-left:15%;margin-top:-8%;">Autolib’ 1 mois est adapté aux personnes qui ont besoin de disposer d’une voiture sur plusieurs semaines.</h5>
<h4 style="color: rgb(0, 157, 224);font-weight: bold;font-size: 16px;margin-left:15%;">25€/ mois+6,5€ par 1/2 heure d'utilisation</h4>
<a href="https://www.autolib.eu/subscribe/fill_profile/" target="_blank" title="Je choisis cette offre"style="margin-left:15%;"><span>Je choisis cette offre</span></a>
<br /><br />
<h3 style="color: rgb(0, 184, 222);font-size: 20px;margin-top:10%">Autolib' 1 Semaine</h3>
<h5 style="margin-left:15%;margin-left:18%;margin-top:-8%;">Autolib’ 1 semaine est utilisé par les personnes qui souhaitent se déplacer de façon ponctuelle sur une semaine. Le badge doit être retiré en espace d'abonnement.</h5>
<h4 style="color: rgb(0, 184, 222);font-weight: bold;font-size: 16px;margin-left:18%;">10€/ 7 jours +7€ par 1/2 heure d'utilisation</h4>
<a href="https://www.autolib.eu/subscribe/fill_profile/" target="_blank" title="Je choisis cette offre"style="margin-left:18%;"><span>Je choisis cette offre</span></a>
<br /><br />
<h3 style="color: rgb(0, 157, 224);font-size: 20px;margin-top:10%">Autolib' 1 Jour</h3>
<h5 style="margin-left:15%;margin-left:15%;margin-top:-8%;">Autolib’ 1 jour est dédié aux personnes qui ont un besoin immédiat de véhicule. La personne utilise le service Autolib’ dès le paiement effectué. Le badge doit être retiré en espace d'abonnement. </h5>
<h4 style="color: rgb(0, 157, 224);font-weight: bold;font-size: 16px;margin-left:15%;">0€/ 24 heures +9€ par 1/2 heure d'utilisation</h4>
<a href="https://www.autolib.eu/subscribe/fill_profile/" target="_blank" title="Je choisis cette offre"style="margin-left:15%;"><span>Je choisis cette offre</span></a>   
<br /><br />
<h3 style="color: rgb(0, 157, 224);font-size: 20px;margin-top:10%">Forfait Partagé 8H</h3>
<h5 style="margin-left:15%;margin-left:18%;margin-top:-8%;">Forfait partagé 8H est conseillé pour que plusieurs personnes (amis, membres d’une même famille, etc, entre 1 et 4 personnes), puissent partager un nombre d’heures défini. Pour une utilisation à plusieurs, quand vous le souhaitez, sur une période de deux mois.</h5>
<h4 style="color: rgb(0, 157, 224);font-weight: bold;font-size: 16px;margin-left:18%;">100€ pour 2 mois</h4>
<a href="https://www.autolib.eu/subscribe/fill_profile/" target="_blank" title="Je choisis cette offre"style="margin-left:18%;"><span>Je choisis cette offre</span></a>
 <br/><br />
<h3 style ="color :rgb(227, 0, 141)">2- Je loue</h3>
<h5>Passez votre badge personnel sur le lecteur afin de déverrouiller la Bluecar. Une LED vous indique la réussite (verte) ou l’échec (rouge) de l’opération. 
<br />Débranchez le câble d’alimentation et veillez à accompagner son enroulement et à fermer le capot de la borne de charge.
   </h5> </div> 

<div id='AutolibBottomLeft' style= "margin-left : 8%;height:30%;">
<h3 style ="color :rgb(227, 0, 141)">3- Je roule</h3>
<h5>Vérifiez son autonomie et faites un état des lieux. En cas de problème, avant de partir, faites une déclaration au centre d’appel via la borne de location.
</h5><br /></div>
    <br />

<div id='AutolibBottomRight'style= "margin-left :50%;height:30%;">
<h3 style ="color :rgb(227, 0, 141)">4- Je passe à mon voisin</h3>
<h5>La voiture garée, vous pouvez badger la borne de charge. Reste à dérouler le câble puis à y brancher votre Bluecar. La location prend fin lorsque le raccordement est correct et le clapet de la borne de charge fermé. Les portes de la Bluecar doivent être verrouillées. Pour cela, passez votre badge personnel sur le lecteur afin de verrouiller la Bluecar. Il n’est alors plus possible de démarrer le véhicule. Mais la réouverture est autorisée pour retirer des effets personnels en cas de besoin.
</h5></div>
    <br /><br /><br /><br />
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
