﻿<%@ Page Title="" Language="C#" MasterPageFile="~/master/Root.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

	<h1>Associations</h1>
	<h2>Read</h2>
	<asp:GridView ID="gridView" runat="server"></asp:GridView>

	<h2>Create, Update, Delete</h2>
	<div>
		<input id="textAssociationId" placeholder="Association Id" required="required" runat="server" title="Association Id" type="text" />
		<label>Use with update and delete</label>
	</div>

	<div>
		<input id="textName" placeholder="name" required="required" runat="server" title="name" type="text" />
	</div>

	<div>
		<input id="textWebsite" placeholder="website" runat="server" title="website" />
	</div>

	<div>
		<textarea id="textDescription" placeholder="description" runat="server" title="description" required="required"></textarea>
	</div>
	<div>
		<button id="buttonCreate" runat="server" title="create" value="create" name="create" validationgroup="create">create</button>
		<button id="buttonUpdate" class="secondary" runat="server" title="update" value="update" name="update" validationgroup="update">update</button>
		<button id="buttonDelete" class="important" runat="server" title="delete" value="delete" name="delete" validationgroup="delete">delete</button>
	</div>

	<h2>Active</h2>
	<button>Standard</button>
	<button class="secondary">Secondary</button>
	<button class="important">Important</button>
	<h2>Disabled</h2>
	<button disabled="disabled">Standard</button>
	<button disabled="disabled" class="secondary">Secondary</button>
	<button disabled="disabled" class="important">Important</button>

</asp:Content>