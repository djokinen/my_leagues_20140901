﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Detail.ascx.cs" Inherits="UserControl_Association_Detail" %>

<section class="form">

	<div class="commands">
		<custom:CustomButton ID="buttonLeagueList" runat="server" Text="Leagues" />
	</div>

	<custom:CustomMessage ID="message" MessageType="Error" runat="server"></custom:CustomMessage>

	<my:TextBox AutoCompleteType="Company" ID="TextName" IsRequired="true" Label="Name" runat="server" />

	<my:TextBox TextMode="MultiLine" AutoCompleteType="Notes" ID="TextDescription" IsRequired="true" Label="Description" runat="server" />

	<div class="commands">
		<custom:CustomButton ButtonAction="Save" ID="buttonSave" runat="server" />
		<custom:CustomButton ButtonAction="Cancel" ID="buttonCancel" runat="server" />
		<custom:CustomButton ButtonAction="Delete" ID="buttonDelete" runat="server" />
	</div>

</section>