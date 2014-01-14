<%@ Page Language="C#" MasterPageFile="~/Modele.Master"  Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Inscription.InscriptionModel>" %>

<script runat="server">
    

</script>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div id="inscriptionContent"  style="background-color: rgba(242, 242, 235, .85)">
        <br />
        <h1>Creation d&#39un compte utilisateur</h1>
        <form id="form2" runat="server">
            <fieldset>
                <legend></legend>
                <br />
                <label for="lastname">Nom</label>
                <input id="lastname" name="lastname" required="required" role="textbox" />
                <br />
                <label for="firstname">Prénom</label>
                <input id="fisrtname" name="firstname" />
                <br />
                <label for="identifiant">Identifiant</label>
                <input id="identifiant" name="identifiant" required="required" />
                <br />
                <label for="email">Email</label>
                <input id="email" name="email" type="Email" required="required" role="textbox" />
                <br />
                <label for="password">Mot de passe</label>
                <input name="password" type="Password" />
                <br />
                <label for="checkedpassword">Confirmer le mot de passe</label>
                <input name="checkedpassword" type="Password" />

                <br />
                <br />
                <input type="submit" value="Valider" />
            </fieldset>
        </form>
    </div>
</asp:Content>
