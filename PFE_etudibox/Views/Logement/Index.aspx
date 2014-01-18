<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Logement.LogementModel>" %>

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
    <div>
        <br />
        <h1>Logement</h1>
        
    </div>
</asp:Content>
