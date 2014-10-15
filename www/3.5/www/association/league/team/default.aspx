<%@ Page Title="Team List" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="association_league_team_default" %>

<%@ Register Src="~/UserControl/Team/List.ascx" TagPrefix="team" TagName="List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<team:List ID="teamList" runat="server" />

</asp:Content>