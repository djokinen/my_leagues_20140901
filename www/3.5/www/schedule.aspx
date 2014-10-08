<%@ Page Title="Schedule" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="schedule.aspx.cs" Inherits="schedule" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<table>
		<thead>
			<tr>
				<th>Date</th>
				<th>Time</th>
				<th>Field</th>
				<th>Away</th>
				<th>Home</th>
				<th>Type</th>
			</tr>
		</thead>

		<tbody>
			<asp:Literal ID="literalBody" runat="server"></asp:Literal>
		</tbody>

		<tfoot style="display: none;">
			<tr>
				<th>Date</th>
				<th>Time</th>
				<th>Field</th>
				<th>Away</th>
				<th>Home</th>
				<th>Type</th>
			</tr>
		</tfoot>
	</table>

</asp:Content>
