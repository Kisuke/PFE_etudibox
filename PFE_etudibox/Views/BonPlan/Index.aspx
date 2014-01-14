<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<IEnumerable<PFE_etudibox.Models.BonPlanVO.BonPlan>>" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login");
        }
    }
    
</script>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <div id="menuBonPlan">
        <a href="#"> <img id="plus" alt="+" src="./Styles/Images/plus.jpg" />  Ajoutez un bon plan</a>
        <form id="Tri" role="checkbox">
            <label >Trier par</label>
            <div class="styled-select" style="float:right"> 
                <select id="tri" runat="server" action="/BonPlan" role="button">
                    <option value="<a href='BonPlan?id=1,1'/>">Carte</option>
                    <option value="Culture">Culture</option>
                    <option value="Date">Date</option>
                    <option value="Restaurant">Restaurant</option>
                </select>
            </div>
        </form>
    </div>
    <%  foreach (var bonPlan in ViewData.Model)
    { %>
        <div id="BonPlan">
            <h2><%=bonPlan.titleBonplan%></h2>
            <div class="cat-date">
		        <span class="posted">Posté dans: </span>
			        <em><a href="BonPlan?id=<%=bonPlan.idCategoryBonplan%>" ><%=bonPlan.categoryBonplan%></a></em>,
                    <em><a href="BonPlan?id=<%=bonPlan.idCategoryBonplan%>,<%=bonPlan.idSubCategoryBonplan%>" ><%=bonPlan.subCategoryBonplan%></a></em>
		        <span class="date">&nbsp;&nbsp;Date: 
			        <em><%=bonPlan.dateBonplan%></em>
		        </span>
	        </div>
            <div class="post-teaser">
                <img id="bonPlanImage<%=bonPlan.idBonplan%>" class="imageBonplan" alt="<%=bonPlan.titleBonplan%>" src="<%=bonPlan.imagePathBonplan%>"/>
                <div class="text">
			            <p><%=bonPlan.bodyBonPlan%></p>
		            <div class="readMore">
			            <span>Auteur: </span>
				        <em><a href="#"><%=bonPlan.member.firstname%> <%=bonPlan.member.lastname%> </a></em>
                        <div class="rating">
                           <a href="#5" title="Donner 5 étoiles">☆</a>
                           <a href="#4" title="Donner 4 étoiles">☆</a>
                           <a href="#3" title="Donner 3 étoiles">☆</a>
                           <a href="#2" title="Donner 2 étoiles">☆</a>
                           <a href="#1" title="Donner 1 étoile">☆</a>
                        </div><br />
                        <span>Source:</span>
                        <em><a href="<%=bonPlan.linkBonplan%>" target="_blank"><%=bonPlan.linkBonplan%></a></em>
                        <br />
		            </div>
	            </div>
            </div>   
        </div>
    <% }%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LateralContent" runat="server">
    <div>
        <h3>Catégories</h3>

        <ul id="menu-accordeon">
            <li>
                <a href="BonPlan?id=1" >Culture</a>
                <ul>
                    <li><a href="BonPlan?id=1,1" >Cinéma</a></li>
                    <li><a href="BonPlan?id=1,2" >Musée</a></li>
                    <li><a href="BonPlan?id=1,3" >Opéra</a></li>
                    <li><a href="BonPlan?id=1,4" >Théâtre</a></li>
                    <li><a href="BonPlan?id=1,5" >Exposition</a></li>
                </ul>
            </li>
            <li >
                <a href="BonPlan?id=2" >Restaurant</a>
            </li>
            <li>
                <a href="BonPlan?id=3" >Carte</a>
                <ul>
                    <li><a href="BonPlan?id=3,5" >Carte Imagine R</a></li>
                    <li><a href="BonPlan?id=3,6" >Carte Forest Hill</a></li>
                    <li><a href="BonPlan?id=3,7" >Carte étudiante ISIC</a></li>
                </ul>
            </li>
        </ul>
        
    </div>
</asp:Content>

