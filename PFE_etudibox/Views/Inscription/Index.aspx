<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Inscription.InscriptionModel>" %>

<<<<<<< HEAD

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        Creation d&#39;un compte utilisateur
        <form id="form1" runat="server">
            <br />
                <asp:Label ID="Label1" runat="server" Text="Nom"></asp:Label>
                <asp:TextBox style="margin-left:142px" ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Prénom"></asp:Label>
                <asp:TextBox style="margin-left:121px" ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Height="16px" style="margin-left:136px" TextMode="Email"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Mot de passe"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" style="margin-left:82px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Confirmer Mot de passe"></asp:Label>
                <asp:TextBox ID="TextBox5" style="margin-left:10px" runat="server" TextMode="Password"></asp:TextBox>
            
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Valider" />
        </form>
    </div>
</asp:Content>
