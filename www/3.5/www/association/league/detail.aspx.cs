using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class league_league_detail : BasePage
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
		// leagueDetail.LeagueId = base.LeagueId;
		// leagueDetail.AssociationId = base.AssociationId;
		base.DataBind();
	}
}