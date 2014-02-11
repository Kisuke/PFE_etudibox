<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.TrocModel.TrocModel>" %>

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
        <h1>Creation d&#39une annonce</h1>
            <form id="form3" enctype="multipart/form-data" method="post">
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
                
                <label for="category">Catégorie</label>
                <select id="category" name="category">
                  <option value="1"selected>Covoiturage</option> 
                  <option value="2" >Object</option>
                  <option value="3">Logement</option>
                  <option value="4">Service</option>
                </select>
                <br />
                <label for="subcategory">Sous-catégorie</label>
                <%/*var value = category.SelectedText;
                     if(ViewState["category"].Equals(2)) {%>
                    <br />
                <% }*/ %>
                <%/*if(category.SelectedText.Equals(2)) {%>
                    <select name="subcategory">
                      <option value="1" selected>Meuble</option> 
                      <option value="2" >Electronique</option>
                      <option value="3" >PC</option>
                    </select>
                    <br />
                <% }*/ %>
                <%/* if(ViewState["category"].Equals(3)) {%>
                    <br />
                <% } */ %>
                <%/* if(ViewState["category"].Equals(4)) {%>
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
