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
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
     <div >
        <br />
        <div id="circle1"style="height: 250px; width: 250px;margin-left:2%"">
                    <br/>
                          <h2 style="margin-left:39%;color:black;font:bold";>Aide</h2>
                    <br/>
        <a href="Administratif/Index.aspx">
            <img src="Styles/Images/Aide.png"style="height:140px; width:140px;margin-top:-15%;margin-left:20%";/>
        </a> 
      
</div>

        <div id="circle2"style="height: 250px; width: 250px;margin-left:18%">
                    <br/>
                           <h2 style="margin-left:39%;color:black;font:bold";>Prêt</h2>
                    <br />
         <a href="Administratif/Prêt">
            <img src="Styles/Images/Pret.png"style="height:140px; width:140px;margin-top:-15%;margin-left:20%";/>
        </a>
            
</div>

        <div id="circle3"style="height: 250px; width: 250px;margin-left:35%">
                    <br/>
                           <h2 style="margin-left:37%;color:black;font:bold";>Impôt</h2>
                    <br />
        <a href="Administratif/Impôt">
            <img src="Styles/Images/Impot.png"style="height:140px; width:140px;margin-top:-15%;margin-left:20%"";/>
        </a>
      
</div>

        <div id="circle4"style="height: 250px; width: 250px;margin-left:54%;">
                    <br/>
                          <h2 style="margin-left:28%;color:black;font:bold";>Stage/Vie</h2>
                    <br />
        <a href="Administratif/Stage-Vie">
            <img src="Styles/Images/Stage.png"style="height:140px; width:140px;margin-top:-15%;margin-left:22%";/>
        </a>

</div>

        <div id="circle5"style="height: 250px; width: 250px;margin-left:8%;margin-top:17%;">
                    <br/>
                            <h2 style="margin-left:28%;color:black;font:bold";>Transport</h2>
                    <br />
        <a href="Administratif/Transport">
            <img src="Styles/Images/Transport.jpg"style="height:140px; width:140px;margin-top:-15%;margin-left:20%";/>
        </a>
          
</div>

        <div id="circle6"style="height: 250px; width: 250px;margin-left:27%;margin-top:17%;">
                    <br/>
                            <h2 style="margin-left:28%;margin-top:-3%;color:black;font:bold";>Sécurité Sociale</h2>
                    <br />
         <a href="Administratif/Sécurité-Sociale">
            <img src="Styles/Images/Secu.png"style="height:140px; width:140px;margin-top:-14%;margin-left:23%";/>
        </a>
    
</div>

            <div id="circle7"style="height: 250px; width: 250px;margin-left:44%;margin-top:17%;">
                    <br/>
                            <h2 style="margin-left:24%;color:black;font:bold";>Logement</h2>
                    <br/>
         <a href="Administratif/Logement">
            <img src="Styles/Images/Logement.png"style="height:140px; width:140px;margin-top:-14%;margin-left:23%";/>
        </a>
                
</div>

                <div id="circle8"style="height: 250px; width: 250px;margin-left:63%;margin-top:17%;">
                    <br/>
                             <h2 style="margin-left:20%;color:black;font:bold";>Etudiant de + de 25ans</h2>
                    <br />
         <a href="Administratif/Etudiant-de-plus-de-25ans">
            <img src="Styles/Images/Students25.PNG"style="height:120px; width:120px;margin-top:-14%;margin-left:27%";/>
        </a>
                 
</div>

</div>


     
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="LateralContent" runat="server">
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <div>
        <br />
        <h3 style= "text-align:center">Catégories</h3>
        <ul class="niveau1">
            <li class="menuAdmin"><%= Html.ActionLink("Aide", "Index", "Administratif/Aide")%>
                <ul class="niveau2">
                     <li><%= Html.ActionLink("Bourses de l'Efrei", "Index", "Aide/Bourses de l'Efrei")%></li>
                    <li><%= Html.ActionLink("Bourses régionales", "Index", "Aide/Bourses régionales")%></li>
                    <li><%= Html.ActionLink("Bourses gouvernementales", "Index", "Aide/Bourses gouvernementales")%></li>
                    <li><%= Html.ActionLink("Autres", "Index", "Aide/Autres")%></li>
                </ul>
            </li>
            <li class="menuAdmin"><%= Html.ActionLink("Prêt", "Index", "Administratif/Prêt")%>
                <ul class="niveau2">
                    <li><%= Html.ActionLink("Prêt étudiant", "Index", "Prêt/Prêt étudiant")%></li>
                    <li><%= Html.ActionLink("Prêt Permis à 1 euros", "Index", "Prêt/Prêt Permis à 1 euros")%></li>
                    <li><%= Html.ActionLink("Autres prêts", "Index", "Prêt/Autres prêts")%></li>
                </ul>
            </li>
            <li class="menuAdmin"><%= Html.ActionLink("Impôt", "Index", "Administratif/Impôt")%></li>

            <li class="menuAdmin"><%= Html.ActionLink("Stage-VIE", "Index", "Administratif/Stage-VIE")%>
                <ul class="niveau2">
                    <li><%= Html.ActionLink("Efrei", "Index", "Stage-VIE/Efrei")%></li>
                    <li><%= Html.ActionLink("Créer un profil sur Viadéo, Linkedin, Monster", "Index", "Stage-VIE/Créer-un-profil")%></li>
                    <li><%= Html.ActionLink("Vie Ubifrance, Civiweb", "Index", "Vie Ubifrance,Stage-VIE/Civiweb")%></li>
                </ul>
            </li>
            <li class="menuAdmin"><%= Html.ActionLink("Transport", "Index", "Administratif/Transport")%>
                <ul class="niveau2">
                    <li><%= Html.ActionLink("Carte Imagine R", "Index", "Transport/Carte Imagine R")%></li>
                    <li><%= Html.ActionLink("Carte Velib", "Index", "Transport/Carte-Velib")%></li>
                    <li><%= Html.ActionLink("Abonnement AutoLib", "Index", "Transport/Abonnement-AutoLib")%></li>
                    <li><%= Html.ActionLink("SNCF Carte jeune", "Index", "Transport/SNCF-Carte-jeune")%></li>
                </ul>
           </li>
           <li class="menuAdmin"><%= Html.ActionLink("Sécurité sociale", "Index", "Administratif/Sécurité-sociale")%>
                <ul class="niveau2">
                    <li><%= Html.ActionLink("SMEREP", "Index", "Sécurité-sociale/SMEREP")%></li>
                    <li><%= Html.ActionLink("LMDE", "Index", "Sécurité-sociale/LMDE")%></li>
                </ul>
           </li>
           <li class="menuAdmin"><%= Html.ActionLink("Logement", "Index", "Administratif/Logement")%>
                <ul class="niveau2">
                    <li><%= Html.ActionLink("CAF/APL", "Index", "Logement/CAF-APL")%></li>
                    <li><%= Html.ActionLink("CROUS", "Index", "Logement/CROUS")%></li>
                </ul>
            </li>
            <li class="menuAdmin"><%= Html.ActionLink("Etudiant + de 25 ans", "Index", "Administratif/Etudiant-plus-de-25ans")%> 
                <ul class="niveau2">
                    <li><%= Html.ActionLink("Vos droits(CMU,RSA)", "Index", "Etudiant-plus-de-25ans/Vos-droits(CMU,RSA)")%></li>
                    <li><%= Html.ActionLink("Ce qui va changer", "Index", "Etudiant-plus-de-25ans/Ce-qui-va-changer")%></li>
                </ul>
            </li>
        </ul>
        
    </div>
</asp:Content>