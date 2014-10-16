<%@ Page Title="DivisionType" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="association_league_divisionType_detail" %>

<%@ Register Src="~/UserControl/DivisionType/Detail.ascx" TagPrefix="divisionType" TagName="Detail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<divisionType:Detail ID="divisionTypeDetail" runat="server" />

</asp:Content>