<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Login.LoginModel>" %>

<!DOCTYPE html>

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
	        
	        <br /><br />
	            
	        <label for="password">Password:</label>
	        <br />
	        <%= Html.Password("password") %>
	        
	        <br /><br />
	
	        <input type="submit" value="Log in" />        
	    <% } %>
    </div>
    </form>
    
    <a href="Inscription">Pas encore de compte ?</a>

</body>
</html>
