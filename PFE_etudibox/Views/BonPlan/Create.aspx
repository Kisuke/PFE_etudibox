<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.BonPlanModel.BonPlanModel>" %>


<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("~/Login");
        }
    }
    
</script>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <link href="<%: Url.Content("~/Styles/Site.css")%>" rel="stylesheet" type="text/css" />
     <div id="inscriptionContent"  style="background-color: rgba(242, 242, 235, .85)">
        <br />
        <h1>Creation d&#39un bon plan</h1>
        <form id="form2" enctype="multipart/form-data" method="post">
            <fieldset>
                <legend></legend>
                <br />
                <label for="title">Titre</label>
                <input id="title" name="title" required="required" />
                <br />
                <label for="body">Corps</label>
                <textarea id="body" name="body" rows="10" cols="50"></textarea>
                <br />
                <label for="image">Image</label>
                <input type="file" name="image" size="40">
                <br />
                <label for="link">Source</label>
                <input id="link" name="link" required="required"/>
                <br />
                <label for="category">Catégorie</label>
                <select id="category" name="category">
                  <option value="1"selected>Culture</option> 
                  <option value="2" >Restaurant</option>
                  <option value="3">Carte</option>
                </select>
                <br />
                <label for="subcategory">Sous-catégorie</label>
                <%/*var value = category.SelectedText;
                    if(category.SelectedText.Equals(1)) {%>
                    <select name="subcategory">
                      <option value="1" selected>Cinema</option> 
                      <option value="2" >Exposition</option>
                      <option value="3">Musée</option>
                        <option value="4">Opéra</option>
                        <option value="5">Théâtre</option>
                    </select>
                    <br />
                <% }*/ %>
                <%/*if(ViewState["category"].Equals(2)) {%>
                    <br />
                <% }*/ %>
                <%/* if(ViewState["category"].Equals(3)) {%>
                    <select name="subcategory">
                      <option value="6">Valeur 1</option> 
                      <option value="7" selected>Valeur 2</option>
                      <option value="8">Valeur 3</option>
                    </select>
                    <br />
                <% } */ %>
                <br />
                <input type="submit" value="Valider" />
            </fieldset>
        </form>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LateralContent" runat="server">
    <div>
        <h3>Catégories</h3>
         <div id='cssmenu'>
            <ul>
                <li class='has-sub'>
                    <a href="BonPlan?id=1">Culture</a>
                    <ul>
                        <li><a href="BonPlan?id=1,1">Cinéma</a></li>
                        <li><a href="BonPlan?id=1,5">Exposition</a></li>
                        <li><a href="BonPlan?id=1,2">Musée</a></li>
                        <li><a href="BonPlan?id=1,3">Opéra</a></li>
                        <li class='last'><a href="BonPlan?id=1,4">Théâtre</a></li>
                    </ul>
                </li>
                <li><a href="BonPlan?id=2">Restaurant</a></li>
                <li class='has-sub'>
                    <a href="BonPlan?id=3">Carte</a>
                    <ul>
                        <li><a href="BonPlan?id=3,5">Carte Imagine R</a></li>
                        <li><a href="BonPlan?id=3,6">Carte Forest Hill</a></li>
                        <li class='last'><a href="BonPlan?id=3,7">Carte étudiante ISIC</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</asp:Content>