<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Transport.TransportModel>" %>

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
    <div id='Transport'>
        <h2><span>Forfait imagine R</span></h2>
        <br /><br />
        <span>Le forfait imagine R annuel réservé aux élèves et étudiants de moins de 26 ans et permet de voyager à volonté toute l’année à l’intérieur des zones choisies sur tous les modes de transport sauf Orlyval et pour imagine R scolaire, Filéo.
</span> 
        <br/><br/> <img src="Styles/Images/ratp.jpg" style="height: 30%; width: 30%; margin-left: 35%; border: none; border-radius: 21%" />
 </div>
    <div id="TransportCorp">

Forfait annuel réservé aux jeunes (élèves ou étudiants de moins de 26 ans) résidant en Île-de-France et répondant à l’une des trois conditions suivantes :
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;"> Avoir moins de 16 ans au 1er septembre de l’année de souscription.
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;"> Avoir moins de 26 ans au 1er septembre de l’année de souscription et suivre une formation initiale de l’enseignement primaire ou secondaire, post-secondaire ou supérieure, une formation d’apprentis dans un établissement recensé par le Ministère de l’Education nationale. 
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;"> Avoir moins de 26 ans au 1er septembre de l’année de souscription et suivre une formation d’insertion de longue durée (>350h théorique) destinée aux jeunes déscolarisés en difficulté. En sont exclues les personnes sous contrat de professionnalisation et les personnes inscrites dans un cursus de longue durée dans le cadre de la formation continue (y compris en vue de l’obtention d’un diplôme reconnu par l’Education nationale).

<br /><h2>Conditions d’utilisation</h2>

Le forfait annuel imagine R permet de voyager sur les lignes régulières de transport en commun y compris Orlybus, Orlyrail, Roissybus et les bus de nuit Noctilien. Il n’est pas valable sur les Cars Air France, Orlyval, dans les TGV en Île-de-France, sur certaines lignes à tarification spéciale d’Optile, ni sur le réseau hors Île-de-France. L’accès à Filéo est autorisé aux forfaits Imagine R Etudiant mais pas aux forfaits Imagine R Scolaire.
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;"> Ce forfait est payable en 9 mensualités ou au comptant
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;"> Les samedis, dimanches et jours fériés, pendant les petites vacances scolaires de l’Île-de-France, uniquement le soir de Fête de la Musique, ainsi que du 1er juillet au 31 août, il est utilisable dans la totalité de la région quel que soit le nombre de zones de votre forfait. La Région Île-de-France contribue au financement de ce « dézonage ».
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;"> En cas de perte ou de vol, imagine R n’est remplacé qu’une seule fois par année scolaire avec une participation de 23 € (frais de gestion).
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;"> Depuis le 1er janvier 2013, le nouveau titre de transport « complément de parcours » vient s’ajouter au dézonage et permet aux voyageurs qui possèdent un forfait Imagine R de se déplacer hors des zones de validité de leur forfait en ne payant que le complément de déplacement effectué en dehors de ces zones. Pour en savoir plus
      
 <br /><h2>Réductions supplémentaires</h2>

<br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;"> Tous les collégiens et lycéens boursiers bénéficient de réductions financées par le STIF et leur département de résidence quand les zones correspondent au trajet domicile-établissement ;
<br /><br /><img src="Styles/Images/point.png" style="background:no-repeat scroll 5px 5px transparent;"> Pour les étudiants boursiers, l’aide est intégrée à la bourse versée par le CROUS. 

 <br /><h2>Contact - SAV</h2>

Agence imagine R 
46 033 (pour les scolaires) - 66 035 (pour les étudiants) 
95905 Cergy-Pontoise Cedex 09
0969 39 55 55 (appel non surtaxé) 
http://www.imagine-r.com


    </div>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="LateralContent" runat="server">
    <br/>
    <div id='cssmenu'>
        <ul>
            <li class='has-sub'><a href='#'><span>Aide</span></a>
                <ul>
                    <li><a href='#'><span>Bourses de l'Efrei</span></a></li>
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
        </ul>
    </div>

</asp:Content>
