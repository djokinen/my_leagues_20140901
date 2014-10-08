<%@ Control Language="C#" AutoEventWireup="false" CodeFile="TextBox.ascx.cs" Inherits="UserControl_Form_TextBox" %>

<div class="group">
	<label for="txt" id="lbl" runat="server"></label>
	<custom:CustomTextBox ID="txt" runat="server" Required="<%# this.IsRequired %>"></custom:CustomTextBox>
	<span class="highlight"></span>
	<span class="bar"></span>
	<custom:CustomRequiredFieldValidator Enabled="false" ID="req" runat="server"></custom:CustomRequiredFieldValidator>
	<custom:CustomEmailAddressValidator Enabled="false" ID="eml" runat="server" CssClass="error"></custom:CustomEmailAddressValidator>
</div>