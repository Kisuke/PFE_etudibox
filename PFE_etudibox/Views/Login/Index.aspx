﻿<%@ Page Language="C#" MasterPageFile="~/Modele.Master" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Login.LoginModel>" %>

<script runat="server">
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <div>
            <br />
            <% using (Html.BeginForm())
	            { %>
       
            <label for="email">Email:</label>
            <br />
            <input ID="email" name="email" type="Email" required="required" role="textbox"/>

            <br />
            <br />

            <label for="password">Password:</label>
            <br />
           <input name="password" type="Password"/>

            <br />
            <br />

            <input type="submit" value="Log in" />
            <% } %>
            <br />
        </div>
    </form>
    <a href="Inscription">Pas encore de compte ?</a>
</asp:Content>
