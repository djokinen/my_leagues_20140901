using MyLeagues.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_DivisionType_List : BaseUserControl
{
	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		buttonCreate.Click += buttonCreate_Click;
	}

	void buttonCreate_Click(object sender, EventArgs e)
	{
		// Response.Redirect(Resources.Key.DivisionTypeUrl, true);
		Response.Redirect(base.GetDivisionTypeUrl(Guid.Empty), true);
	}

	public override void DataBind()
	{
		base.DataBind();
		repeater.DataSource = DivisionTypeBL.Get(base.LeagueId, false);
		repeater.DataBind();
	}
}