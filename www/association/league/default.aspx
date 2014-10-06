<%@ Page Title="League List" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="league_league_default" %>

<%@ Register Src="~/UserControl/League/List.ascx" TagPrefix="league" TagName="List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<league:List ID="leagueList" runat="server" />

</asp:Content>