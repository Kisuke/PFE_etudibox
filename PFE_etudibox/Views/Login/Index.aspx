<%@ Page Language="C#" MasterPageFile="~/Modele.Master" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Login.LoginModel>" %>

<script runat="server">
    
    
</script>

<<<<<<< HEAD
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div>
                <br />
                <% using (Html.BeginForm())
	            { %>
	            <label for="email">Email:</label>
	            <br />
	            <%= Html.TextBox("email") %>
=======
<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <% using (Html.BeginForm())
	       { %>
	        <label for="email">Email:</label>
	        <br />
	        <%= Html.TextBox("email") %>
>>>>>>> 68055a769ca2c6d2af3bc6701a32a16a8a79b182
	        
	            <br /><br />
	            
<<<<<<< HEAD
	            <label for="password">Password:</label>
	            <br />
	            <%= Html.Password("password") %>
=======
	        <label for="password">Password:</label>
	        <br />
	        <%= Html.Password("password") %>
>>>>>>> 68055a769ca2c6d2af3bc6701a32a16a8a79b182
	        
	            <br /><br />
	
<<<<<<< HEAD
	            <input type="submit" value="Log in" />        
	        <% } %>
                <br />
        </div>
        <a id=normal href="Inscription">Pas encore de compte ?</a>
    </form>
</asp:Content>

=======
	        <input type="submit" value="Log in" />        
	    <% } %>
    </div>
    </form>
    
    <a href="Inscription">Pas encore de compte ?</a>

</body>
</html>
>>>>>>> 68055a769ca2c6d2af3bc6701a32a16a8a79b182
