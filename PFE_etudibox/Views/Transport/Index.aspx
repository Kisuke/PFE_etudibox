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
<br />46 033 (pour les scolaires) - 66 035 (pour les étudiants) 
<br/> 95905 Cergy-Pontoise Cedex 09
<br />Tel : 0969 39 55 55 (appel non surtaxé) 
<br /><a href="http://www.imagine-r.com" target="_blank" title="Acc&eacute;der au site www.imagine-r.com ">www.imagine-r.com </a><br/>

<p><strong>Service après vente (perte, vol)</strong></p>

<p>Rendez-vous dans les agences commerciales d&#8217;Optile, <a href="http://www.ratp.fr/fr/ratp/c_20993/les-agences-commerciales-ratp-et-sncf/" class='spip_out' rel='external'>de la RATP et de SNCF Transilien</a> ainsi que dans <a href="http://www.ratp.fr/fr/ratp/r_45440/comptoirs-club/" class='spip_out' rel='external'>les comptoirs-clubs de la RATP.</a></p>

<p><a href="http://www.ratp.fr/fr/upload/docs/application/pdf/2011-06/implantation_comptoirs.pdf" class='spip_out' rel='external'>Consultez la carte des comptoirs-clubs RATP</a></p>

<p><a href="IMG/pdf/guide_tarifaire_2014_bat.pdf" class='spip_in' type='application/pdf'>Téléchargez le guide tarifaire du 1er janvier 2014</a></p>
    </div>
<br />
    
<div id='TransportBottomLeft' style= "margin-left : 8%;height:30%;">
<img src="Styles/Images/download.jpg" style="height: 5%; width: 12%;margin-top:2%;margin-left : 2%"><h3 style ="margin-top:-10% ; margin-left:18%">Les sites utiles</h3>
<br /><ul><li>Votre contrat et toutes les informations utiles sur
 <a href="http://www.imagine-r.com/" title="http://www.imagine-r.com">http://www.imagine-r.com</a></li></ul>
<br /><br /><br /></div>
    <br />

<div id='TransportBottomRight'style= "margin-left :50%;height:30%;">
<img src="Styles/Images/info.jpg" style="height: 5%; width: 9%;margin-top:2%;margin-left : 2%"><h3 style ="margin-top:-8% ; margin-left:15%">Comment obtenir sa carte imagine R&nbsp;?</h3>
<br /><p><strong>Les dossiers d’abonnement sont à retirer </strong> dans les stations et gares de la RATP et de Transilien SNCF, dans les agences commerciales d’OPTILE, de la RATP et de SNCF Transilien et les comptoirs-clubs à Paris et en Île-de-France <a href="http://www.ratp.fr/fr/ratp/c_20993/les-agences-commerciales-ratp-et-sncf" class='spip_out' rel='external'>(toutes les coordonnées)</a></p>	
</div>
    <br /><br />
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

