using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class association_league_team_detail : BasePage
{
	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		if (!IsPostBack)
		{
			this.DataBind();
		}
	}

	public override void DataBind()
	{
		teamDetail.TeamId = base.TeamId;
		teamDetail.LeagueId = base.LeagueId;
		teamDetail.AssociationId = base.AssociationId;
		base.DataBind();
	}
}