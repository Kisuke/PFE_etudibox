<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Login.LoginModel>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Login</title>
</head>
<body>
    <div>
         <% using (Html.BeginForm())
	       { %>
	        <label for="Email">Email:</label>
	        <br />
	        <%= Html.TextBox("Email") %>
	        
	        <br /><br />
	            
	        <label for="Password">Password:</label>
	        <br />
	        <%= Html.Password("Password") %>
	        
	        <br /><br />
	
	        <input type="submit" value="Log in" />        
	    <% } %>
    </div>
</body>
</html>
