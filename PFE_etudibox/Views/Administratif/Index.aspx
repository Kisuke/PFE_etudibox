<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Administratif.AdministratifModel>" %>

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
    <div id="circlesPanel">
        <br />
        <div id="circle1" style="background-color: rgba(30, 176, 24, 0.85);">
            <br />
            <h3 style="margin-left: 43%; color: black; font-weight: bold">Aide</h3>
            <br />
            <a href="Administratif?id=1">
                <img src="Styles/Images/Aide.png" style="height: 50%; width: 50%; margin-top: -10%; margin-left: 25%; border: none; border-radius: 21%" />
            </a>
        </div>

        <div id="circle2" style="background-color: rgba(100, 149, 237,0.85);">
            <br />
            <h3 style="margin-left: 43%; color: black; font-weight: bold">Prêt</h3>
            <br />
            <a href="Administratif/Prêt">
                <img src="Styles/Images/Pret.png" style="height: 50%; width: 50%; margin-top: -10%; margin-left: 25%; border: none; border-radius: 21%" />
            </a>

        </div>

        <div id="circle3" style="background-color: rgba(144, 238, 144,0.85);">
            <br />
            <h3 style="margin-left: 43%; color: black; font-weight: bold">Impôt</h3>
            <br />
            <a href="Administratif/Impôt">
                <img src="Styles/Images/Impot.png" style="height: 50%; width: 50%; margin-top: -10%; margin-left: 25%; border: none; border-radius: 21%" />
            </a>

        </div>

        <div id="circle4" style="background-color: rgba(250, 128, 114, 0.85);">
            <br />
            <h3 style="margin-left: 35%; color: black; font-weight: bold">Stage/Vie</h3>
            <br />
            <a href="Administratif/Stage-Vie">
                <img src="Styles/Images/Stage.png" style="height: 50%; width: 50%; margin-top: -10%; margin-left: 25%; border: none; border-radius: 21%" />
            </a>

        </div>

        <div id="circle5" style="background-color: rgba(135, 206, 235, 0.85);">
            <br />
            <h3 style="margin-left: 35%; color: black; font-weight: bold">Transport</h3>
            <br />
            <a href="Administratif/Transport">
                <img src="Styles/Images/Transport.jpg" style="height: 50%; width: 50%; margin-top: -10%; margin-left: 25%; border: none; border-radius: 21%" />
            </a>

        </div>

        <div id="circle6" style="background-color: rgba(255, 182, 193, 0.85);">
            <br />
            <h3 style="margin-left: 20%; color: black; font-weight: bold">Sécurité Sociale</h3>
            <br />
            <a href="Administratif/Sécurité-Sociale">          
                <img src="Styles/Images/Secu.png" style="height: 50%; width: 50%; margin-top: -9%; margin-left: 23%; border: none; border-radius: 21%" />
            </a>

        </div>

        <div id="circle7" style="background-color: rgba(64, 224, 208, 0.85);">
            <br />
            <h3 style="margin-left: 30%; color: black; font-weight: bold">Logement</h3>
            <br />
            <a href="Administratif/Logement">
                <img src="Styles/Images/Logement.png" style="height: 50%; width: 50%; margin-top: -9%; margin-left: 23%; border: none; border-radius: 21%" />
            </a>

        </div>

        <div id="circle8" style="background-color: rgba(0, 128, 128, 0.85);">
            <br />
            <h3 style="color: black; font-weight: bold; text-align: center; width: 98%;">Etudiant + de 25 ans</h3>
            <br />
            <a href="Administratif/Etudiant-de-plus-de-25ans">
                <img src="Styles/Images/Students25.PNG" style="height: 48%; width: 48%; margin-top: -10%; margin-left: 27%; border: none; border-radius: 21%" />
            </a>

        </div>

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
            <li class='has-sub'><a href='Administratif?id=5'><span>Transport</span></a>
                <ul>
                    <li><a href='Transport'><span>Carte Imagine R</span></a></li>
                    <li><a href='Administratif?id=52'><span>Carte Velib</span></a></li>
                    <li><a href='Administratif?id=53'><span>Abonnement AutoLib</span></a></li>
                    <li class='last'><a href='Administratif?id=54'><span>SNCF Carte jeune</span></a></li>
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
