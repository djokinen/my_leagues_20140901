using MyLeagues.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _default : System.Web.UI.Page
{
	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		buttonCreate.ServerClick += buttonCreate_ServerClick;
		buttonUpdate.ServerClick += buttonUpdate_ServerClick;
		buttonDelete.ServerClick += buttonDelete_ServerClick;
	}

	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		if (!IsPostBack)
		{
			textWebsite.Attributes["type"] = "url";
			this.DataBind();
		}
	}

	public override void DataBind()
	{
		base.DataBind();
		gridView.DataSource = AssociationBL.Get(false);
		gridView.DataBind();
	}

	void buttonCreate_ServerClick(object sender, EventArgs e)
	{
		Association association = new Association();
		association.Description = textDescription.InnerText.Trim();
		association.Name = textName.Value.Trim();
		association.Website = textWebsite.Value.Trim();
		association = AssociationBL.Insert(association);
		if (association != null)
		{
			this.DataBind();
		}
	}

	void buttonUpdate_ServerClick(object sender, EventArgs e)
	{
		Guid guid = new Guid(textAssociationId.Value.Trim());
		Association association = AssociationBL.GetBy(guid, false);
		if (association != null)
		{
			association.Description = textDescription.InnerText.Trim();
			association.Name = textName.Value.Trim();
			association.Website = textWebsite.Value.Trim();
			AssociationBL.Update(association);
			this.DataBind();
		}
	}

	void buttonDelete_ServerClick(object sender, EventArgs e)
	{
		Guid guid = new Guid(textAssociationId.Value.Trim());
		AssociationBL.Delete(guid);
		this.DataBind();
	}
}