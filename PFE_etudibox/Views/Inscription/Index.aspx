<%@ Page Language="C#" MasterPageFile="~/Modele.Master"  Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Inscription.InscriptionModel>" %>

<script runat="server">
    

</script>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <h1>Creation d&#39un compte utilisateur</h1>
            <form id="form2" runat="server">
                <br />
                <label for="lastname">Nom</label>
                <input style="margin-left: 73px; height: 22px; width: 160px;" id="lastname" name="lastname" required="required" role="textbox" />
                <br />
                <label for="firstname">Prénom</label>
                <input style="margin-left: 50px; height: 22px; width: 160px;" id="fisrtname" name="firstname" />
                <br />
                <label for="identifiant">Identifiant</label>
                <input id="identifiant" name="identifiant" style="margin-left: 36px; height: 22px; width: 159px;" required="required" />
                <br />
                <label for="email">Email</label>
                <input id="email" name="email" style="margin-left: 66px; height: 22px; width: 160px;" type="Email" required="required" role="textbox" />
                <br />
                <label for="password">Mot de passe</label>
                <input name="password" style="margin-left: 105px; height: 21px; width: 160px;" type="Password" />
                <br />
                <label for="checkedpassword">Confirmer le mot de passe</label>
                <input name="checkedpassword" style="margin-left: 10px; height: 22px; width: 160px;" type="Password" />

                <br />
                <br />
                <input type="submit" value="Valider" />
            </form>
    </div>
</asp:Content>
