﻿<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.Inscription.InscriptionModel>" %>

<script runat="server">
    
    
</script>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <br />
        <h1>Creation d&#39;un compte utilisateur</h1>
            <form id="form2" runat="server">
                <br />
                <label for="lastname">Nom</label>
                <input style="margin-left: 142px" id="lastname" name="lastname" required="required" role="textbox" />
                <br />
                <label for="firstname">Prénom</label>
                <input style="margin-left: 121px" id="fisrtname" name="firstname" />
                <br />
                <label for="login">Login</label>
                <input style="margin-left: 137px" id="login" name="login" required="required" />
                <br />
                <label for="email">Email</label>
                <input id="email" name="email" style="margin-left: 136px" type="Email" required="required" role="textbox" />
                <br />
                <label for="password">Mot de passe</label>
                <input name="password" style="margin-left: 82px" type="Password" />
                <br />
                <label for="checkedpassword">Confirmer le mot de passe</label>
                <input name="checkedpassword" style="margin-left: 10px" type="Password" />

                <br />
                <br />
                <input type="submit" value="Valider" />
            </form>
    </div>
</asp:Content>
