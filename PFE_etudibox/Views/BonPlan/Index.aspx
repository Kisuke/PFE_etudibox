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
        <a href="#">Ajoutez un bon plan</a>

    </div>
    <%  foreach (var bonPlan in ViewData.Model)
    { %>
        <div id="BonPlan">
            <h2><%=bonPlan.titleBonplan%></h2>
            <div class="cat-date">
		        <span class="posted">Posté dans: </span>
			        <em><a href="#"><%=bonPlan.categoryBonplan%></a></em>,
                    <em><a href="#"><%=bonPlan.subCategoryBonplan%></a></em>
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
				            <em><a href="#"><%=bonPlan.member.firstname%> <%=bonPlan.member.lastname%> </a></em><br />
                        <span>Source: </span>
                            <em><a href="#"><%=bonPlan.linkBonplan%></a></em><br />
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
                Culture
                <ul>
                    <li>Cinéma</li>
                    <li>Musée</li>
                    <li>Opéra</li>
                    <li>Théâtre</li>
                    <li>Exposition</li>
                </ul>
            </li>
            <li >
                Restaurant
            </li>
            <li>
                Carte
                <ul>
                    <li>Carte Imagine R</li>
                    <li>Carte étudiante ISIC</li>
                    <li>Carte Forest Hill</li>
                </ul>
            </li>
        </ul>
        
    </div>
</asp:Content>

