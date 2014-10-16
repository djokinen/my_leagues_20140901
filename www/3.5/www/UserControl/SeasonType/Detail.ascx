<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Detail.ascx.cs" Inherits="UserControl_SeasonType_Detail" %>

<h2>SeasonType</h2>

<section class="form">

	<custom:CustomMessage ID="message" MessageType="Error" runat="server"></custom:CustomMessage>

	<div class="commands">
		<a id="linkSeasonList" runat="server">Seasons</a>
	</div>	

	<my:TextBox AutoCompleteType="Company" ID="TextName" IsRequired="true" Label="Name" runat="server" />

	<my:TextBox TextMode="MultiLine" AutoCompleteType="Notes" ID="TextDescription" IsRequired="true" Label="Description" runat="server" />

	<div class="commands">
		<custom:CustomButton ButtonAction="Save" ID="buttonSave" runat="server" />
		<custom:CustomButton ButtonAction="Delete" ID="buttonDelete" runat="server" />
		<a id="linkCancel" runat="server">Cancel</a>
	</div>

</section>