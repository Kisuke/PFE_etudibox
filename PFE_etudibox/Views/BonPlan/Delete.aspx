<%@ Page Language="C#" MasterPageFile="~/Modele.Master" AutoEventWireup="true" Inherits="System.Web.Mvc.ViewPage<PFE_etudibox.Models.BonPlanModel.BonPlanModel>" %>


<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("~/Login");
        }
        else
        {
            Response.Redirect("~/BonPlan");
        }
    }
    
</script>

