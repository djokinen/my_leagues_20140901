using MyLeagues.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_Association_List : BaseUserControl
{
	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		buttonCreate.Click += buttonCreate_Click;
	}

	void buttonCreate_Click(object sender, EventArgs e)
	{
		Response.Redirect(Resources.Key.AssociationUrl, true);
	}

	public override void DataBind()
	{
		base.DataBind();
		repeater.DataSource = AssociationBL.Get(false);
		repeater.DataBind();
	}
}