<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.BonPlan.BonPlanModel>" %>

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
    <div>
        <h2>Bons Plans</h2>
         <% foreach (var bonPlan in ViewData.Model)
            { %>
           
        <% }%>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LateralContent" runat="server">
    <div>
        <h3>Catégories</h3>

        <ul class="niveau1">
            <li class="menuAdmin">
                La culture
                <ul class="niveau2">
                    <li class="menuAdmin">Cinéma</li>
                    <li class="menuAdmin">Musée</li>
                    <li class="menuAdmin">Opéra</li>
                    <li class="menuAdmin">Théâtre</li>
                    <li class="menuAdmin">Exposition</li>
                </ul>
            </li>
            <li class="menuAdmin">
                Restaurant
            </li>
            <li class="menuAdmin">
                Carte
                <ul class="niveau2">
                    <li class="menuAdmin">Carte Imagine R</li>
                    <li class="menuAdmin">Carte étudiante ISIC</li>
                    <li class="menuAdmin">Carte Forest Hill</li>
                </ul>
            </li>
        </ul>
        
    </div>
</asp:Content>

