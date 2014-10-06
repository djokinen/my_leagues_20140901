<%@ Control Language="C#" AutoEventWireup="true" CodeFile="List.ascx.cs" Inherits="UserControl_Team_List" %>

<custom:CustomButton ButtonAction="Create" ID="buttonCreate" runat="server" />

<asp:Repeater ID="repeater" runat="server">

	<HeaderTemplate>
		<ol>
	</HeaderTemplate>

	<ItemTemplate>

		<li>
			<div class="detail">
				<a href="detail.aspx?<%= Resources.Key.TeamId %>=<%# Eval("ID") %>">
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
