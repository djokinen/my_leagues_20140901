<%@ Page Title="Association List" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="association_default" %>

<%@ Register Src="~/UserControl/Association/List.ascx" TagPrefix="association" TagName="List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<h2>Association List</h2>
	<association:List ID="associationList" runat="server" />

</asp:Content>