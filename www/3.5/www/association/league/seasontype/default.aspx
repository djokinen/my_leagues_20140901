<%@ Page Title="SeasonType List" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="association_league_seasonType_default" %>

<%@ Register Src="~/UserControl/SeasonType/List.ascx" TagPrefix="seasonType" TagName="List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<seasonType:List ID="seasonTypeList" runat="server" />

</asp:Content>