<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Menu</title>
</head>
<body>
    <div>
        <ul id="menu"> 
            <li><%= Html.ActionLink("Home", "Index", "Home")%></li> 
            <li><%= Html.ActionLink("Administratif", "About", "Administratif")%></li> 
            <li><%= Html.ActionLink("Logement", "Index", "Logement")%></li> 
            <li><%= Html.ActionLink("Bons Plans", "Index", "Bons Plans")%></li> 
            <li><%= Html.ActionLink("Trocs", "Index", "Trocs")%></li> 
            <li><%= Html.ActionLink("Tchat", "Index", "Tchat")%></li> 
        </ul> 
    </div>
</body>
</html>
