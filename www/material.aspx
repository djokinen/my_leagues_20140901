<%@ Page Title="" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="material.aspx.cs" Inherits="material" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
	<section class="form">

		<my:TextBox AutoCompleteType="DisplayName" ID="TextName" IsRequired="true" Label="Name" runat="server" />

		<my:TextBox AutoCompleteType="Email" ID="TextEmail" IsEmail="true" IsRequired="true" Label="Email" runat="server" />

		<my:TextBox TextMode="MultiLine" AutoCompleteType="Notes" ID="Description" Label="Description" runat="server" />

	</section>
</asp:Content>
