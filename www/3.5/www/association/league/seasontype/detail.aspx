<%@ Page Title="SeasonType" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="association_league_seasonType_detail" %>

<%@ Register Src="~/UserControl/SeasonType/Detail.ascx" TagPrefix="seasonType" TagName="Detail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<seasonType:Detail ID="seasonTypeDetail" runat="server" />

</asp:Content>