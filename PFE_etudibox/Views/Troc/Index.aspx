<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<IEnumerable<PFE_etudibox.Models.TrocVO.Troc>>" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login");
        }
    }
    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="menuTroc">
        <a href="#"> <img id="plus" alt="+" src="./Styles/Images/plus.jpg" />  Ajoutez une annonce</a>
        <form id="Tri" role="checkbox">
            <label >Trier par</label>
            <div class="styled-select" style="float:right"> 
                <select id="tri">
                    <option value="Covoiturage">Covoiturage</option>
                    <option value="Objet">Objet</option>
                    <option value="Logement">Logement</option>
                    <option value="Service">Service</option>
                    <option value="Date">Date</option>
                </select>
            </div>
        </form>
    </div>
    <%  foreach (var troc in ViewData.Model)
    { %>
        <div id="Troc">
            <h2><%=troc.titleTroc%></h2>
            <div class="cat-date">
		        <span class="posted">Posté dans: </span>
			        <em><a href="#"><%=troc.categoryTroc%></a></em>,
                    <em><a href="#"><%=troc.subCategoryTroc%></a></em>
		        <span class="date">&nbsp;&nbsp;Date: 
			        <em><%=troc.dateTroc%></em>
		        </span>
	        </div>
            <div class="post-teaser">
                <img id="trocImage<%=troc.idTroc%>" class="imageTroc" alt="<%=troc.titleTroc%>" src="<%=troc.imagePathTroc%>"/>
                <div class="text">
			            <p><%=troc.bodyTroc%></p>
		            <div class="readMore">
			            <span>Auteur: </span>
				        <em><a href="#"><%=troc.member.firstname%> <%=troc.member.lastname%> </a></em>
                        <div class="rating">
                           <a href="#5" title="Donner 5 étoiles">☆</a>
                           <a href="#4" title="Donner 4 étoiles">☆</a>
                           <a href="#3" title="Donner 3 étoiles">☆</a>
                           <a href="#2" title="Donner 2 étoiles">☆</a>
                           <a href="#1" title="Donner 1 étoile">☆</a>
                        </div><br />
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
                Covoiturage
            </li>
            <li >
                <a href="Troc?id=2" >Objet</a>
                <ul>
                    <li><a href="Troc?id=2,1" >Meuble</a></li>
                    <li><a href="Troc?id=2,2" >Electronique</a></li>
                    <li><a href="Troc?id=2,3" >PC</a></li>
                </ul>
            </li>
            <li >
                Logement
            </li>
            <li >
                Service
            </li>
        </ul>
        
    </div>
</asp:Content>

