<%@ Page Title="DivisionType List" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="association_league_divisionType_default" %>

<%@ Register Src="~/UserControl/DivisionType/List.ascx" TagPrefix="divisionType" TagName="List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<divisionType:List ID="divisionTypeList" runat="server" />

</asp:Content>