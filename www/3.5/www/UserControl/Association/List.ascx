<%@ Control Language="C#" AutoEventWireup="true" CodeFile="List.ascx.cs" Inherits="UserControl_Association_List" %>

<h2>Associations</h2>

<custom:CustomButton ButtonAction="Create" ID="buttonCreate" runat="server" />

<asp:Repeater ID="repeater" runat="server">

	<HeaderTemplate>
		<ol>
	</HeaderTemplate>

	<ItemTemplate>

		<li>
			<div class="detail">
				<a href="detail.aspx?<%= Resources.Key.AssociationId %>=<%# Eval("ID") %>">
					<div class="name"><%# Eval("Name") %></div>
					<div class="description"><%# Eval("Description") %></div>
				</a>
			</div>
		</li>

	</ItemTemplate>

	<FooterTemplate>
		</ol>
	</FooterTemplate>

</asp:Repeater>
