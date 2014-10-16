using MyLeagues.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_League_List : BaseUserControl
{
	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		buttonCreate.Click += buttonCreate_Click;
	}

	void buttonCreate_Click(object sender, EventArgs e)
	{
		Response.Redirect(base.GetLeagueUrl(Guid.Empty), true);
	}

	public override void DataBind()
	{
		base.DataBind();
		repeater.DataSource = LeagueBL.Get(base.AssociationId, false);
		repeater.DataBind();
	}
}