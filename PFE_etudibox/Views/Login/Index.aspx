<%@ Page Language="C#" MasterPageFile="~/Modele.Master" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Login.LoginModel>" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        var username = Session["username"];
    }

    protected void Logout_Click()
    {
        Session["username"] = null;
    }
    
</script>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="BasicContentHolder">
        <div id="circle">
                    <span style="display: inline-block;height: 30%; width: 1px;"></span>
                <p style="height: 241px; width: 325px">Bienvenue sur le site d'entraide et de partage étudiant</p>
        </div>
    </div>    
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="LateralContent" runat="server">
    <%  if (Session["username"] == null)
       { %>
        <div id="login">
            <form id="form1" runat="server">
                <div>
                    <br />
                    <% using (Html.BeginForm())
	                    { %>
       
                    <label for="email">Email</label>
                    <br />
                    <input ID="email" name="email" type="Email" required="required" role="textbox"/>

                    <br />
                    <br />

                    <label for="password">Password</label>
                    <br />
                   <input name="password" type="Password" required="required" />

                    <br />
                    <br />

                    <input type="submit" value="Se connecter"  />
                    <% } %>
                    <br />
                </div>
            </form>
            <br />
            <a href="Inscription">Pas encore de compte ?</a>
        </div>
    <%} %>
</asp:Content>
