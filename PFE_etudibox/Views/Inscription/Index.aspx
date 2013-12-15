<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Inscription.InscriptionModel>" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>


<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Inscription</title>
    <link href="./CSS/Inscription.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div style="font-size: large">
        
        Creation d&#39;un compte utilisateur
        <form id="form1" runat="server">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Nom"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Prénom"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="16px" style="margin-left: 0px" TextMode="Email" Width="117px"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Mot de passe"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Confirmer Mot de passe"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Valider" />
        </form>
    </div>
</body>
</html>
