<%@ Page Title="" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="material.aspx.cs" Inherits="material" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

		<h2>Heading 2 (This Page)</h2>

		<div class="group">
			<label>Name</label>
			<input type="text" required="" placeholder="John Smith" />
			<span class="highlight"></span>
			<span class="bar"></span>
			
		</div>

		<div class="group">
			<label>Email</label>
			<input type="email" required="" placeholder="john@domain.net" />
			<span class="highlight"></span>
			<span class="bar"></span>
			
		</div>

		<div class="group">
			<label>Description</label>
			<textarea placeholder="Not required"></textarea>
			<span class="highlight"></span>
			<span class="bar"></span>
			
		</div>
</asp:Content>