<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<IEnumerable<PFE_etudibox.VO.TrocVO.Troc>>" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("Login");
        }
    }
    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="menuTroc">
        <a href="<%: Url.Action("Create", "Troc")%>">
            <img id="plus" alt="+" src="./Styles/Images/plus.jpg" />
            Ajoutez une annonce</a>
        <form id="Tri" role="checkbox">
            <label>Trier par</label>
            <div class="styled-select" style="float: right">
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
         <%
            if (troc.member.user_id.Equals((String)Session["id"]))
            {%>
             <a href="<%: Url.Action("Delete", "Troc", new { id=troc.idTroc})%>" style="float: right; margin-top: -5%;"><img id="deleteButton" alt="Supprimer" src="./Styles/Images/supprimer-icone.png" /></a>
        <%}%>
        <div class="cat-date">
            <span class="posted">Posté dans: </span>
            <em><a href="Troc?id=<%=troc.idCategoryTroc%>"><%=troc.categoryTroc%></a></em>,
                    <em><a href="Troc?id=<%=troc.idCategoryTroc%>,<%=troc.idSubCategoryTroc%>"><%=troc.subCategoryTroc%></a></em>
            <span class="date">&nbsp;&nbsp;Date: 
			        <em><%=troc.dateTroc%></em>
            </span>
        </div>
        <div class="post-teaser">
            <img id="trocImage<%=troc.idTroc%>" class="imageTroc" alt="<%=troc.titleTroc%>" src="<%=troc.imagePathTroc%>" />
            <div class="text">
                <p><%=troc.bodyTroc%></p>
                <div class="readMore">
                    <span>Auteur: </span>
                    <em><a href="mailto:<%=troc.member.email%>"><%=troc.member.firstname%> <%=troc.member.lastname%> </a></em>
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

        <div id='cssmenu'>
            <ul>
                <li>
                    <a href="Troc?id=1">Covoiturage</a>
                </li>
                <li class='has-sub'>
                    <a href="Troc?id=2">Objet</a>
                    <ul>
                        <li><a href="Troc?id=2,1">Meuble</a></li>
                        <li><a href="Troc?id=2,2">Electronique</a></li>
                        <li class='last'><a href="Troc?id=2,3">PC</a></li>
                    </ul>
                </li>
                <li>
                    <a href="Troc?id=3">Logement</a>

                </li>
                <li>
                    <a href="Troc?id=4">Service</a>
               </li>
            </ul>
        </div>
    </div>
</asp:Content>

