<%@ Page Title="League" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="league_league_detail" %>

<%@ Register Src="~/UserControl/League/Detail.ascx" TagPrefix="league" TagName="Detail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<league:Detail ID="leagueDetail" runat="server" />

</asp:Content>