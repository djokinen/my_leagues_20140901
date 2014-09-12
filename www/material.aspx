<%@ Page Title="" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="material.aspx.cs" Inherits="material" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

		<h2>Material Design in CSS3<small>Inputs</small></h2>

		<div class="group">
			<input type="text" required="" placeholder="John Smith">
			<span class="highlight"></span>
			<span class="bar"></span>
			<label>Name</label>
		</div>

		<div class="group">
			<input type="email" required="" placeholder="john@domain.net">
			<span class="highlight"></span>
			<span class="bar"></span>
			<label>Email</label>
		</div>

		<div class="group">
			<textarea placeholder="Not required"></textarea>
			<span class="highlight"></span>
			<span class="bar"></span>
			<label>Description</label>
		</div>
</asp:Content>