<%@ Page Title="Team" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="association_league_team_detail" %>

<%@ Register Src="~/UserControl/Team/Detail.ascx" TagPrefix="team" TagName="Detail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<team:Detail ID="teamDetail" runat="server" />

</asp:Content>