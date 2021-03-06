﻿using MyLeagues.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_Team_List : BaseUserControl
{
	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		buttonCreate.Click += buttonCreate_Click;
	}

	void buttonCreate_Click(object sender, EventArgs e)
	{
		// Response.Redirect(Resources.Key.TeamUrl, true);
		Response.Redirect(base.GetTeamUrl(Guid.Empty), true);
	}

	public override void DataBind()
	{
		base.DataBind();
		repeater.DataSource = TeamBL.Get(base.LeagueId, false);
		repeater.DataBind();
	}
}