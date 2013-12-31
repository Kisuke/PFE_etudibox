<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Troc.TrocModel>" %>

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
        <br />
        <h1>Troc</h1>

        <center> 
            <table border="1" style=" width:95%; text-align:center;">
                <tr>
                    <th>Offres de troc</th>
                </tr>
                <tr>
                    <td>row 1, cell 2</td>
                </tr>
            </table>
        </center> 
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LateralContent" runat="server">
    <div>
        <br />
        <h3>Catégories</h3>

        <div id="CategorieTroc">     
            <%= Html.ActionLink("Covoiturage", "Index", "CovoiturageTroc")%><br />
            <%= Html.ActionLink("Electronique", "Index", "ElectroniqueTroc")%><br />
            <%= Html.ActionLink("Logement", "Index", "LogementTroc")%> <br />
            <%= Html.ActionLink("Services", "Index", "ServicesTroc")%> 
        </div>
        
    </div>
</asp:Content>
