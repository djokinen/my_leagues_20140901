<%@ Page Title="Association" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="association_detail" %>

<%@ Register Src="~/UserControl/Association/Detail.ascx" TagPrefix="association" TagName="Detail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<h2>Association Detail</h2>
	<association:Detail ID="associationDetail" runat="server" />

</asp:Content>