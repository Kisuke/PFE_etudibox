<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Home.HomeModel>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Login</title>
    <style>
        ul
        {
            list-style-type:none;
            margin:0;
            padding:0;
            overflow:hidden;
        }
        #menu li
        {
            float:left;
        }
        #menu a:link,a:visited
        {
            display:block;
            width:200px;
            font-weight:bold;
            color:#FFFFFF;
            background-color:#98bf21;
            text-align:center;
            padding:4px;
            text-decoration:none;
            text-transform:uppercase;
        }
        #menu a:hover,a:active
        {
             background-color:#7A991A;
        }
       
    </style>
</head>
<body>
    <div>
        <ul id="menu"> 
            <li><%= Html.ActionLink("Accueil", "Index", "Home")%></li> 
            <li><%= Html.ActionLink("Administratif", "About", "Administratif")%></li> 
            <li><%= Html.ActionLink("Logement", "Index", "Logement")%></li> 
            <li><%= Html.ActionLink("Bons Plans", "Index", "BonPlan")%></li> 
            <li><%= Html.ActionLink("Trocs", "Index", "Troc")%></li> 
            <li><%= Html.ActionLink("Tchat", "Index", "Tchat")%></li> 
        </ul> 
    </div>
    <form id="form1" runat="server">
    <div>
         <br />
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
    
    <a id=normal href="Inscription">Pas encore de compte ?</a>

    </form>
    
    </body>
</html>
