using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class association_league_team_default : BasePage
{
	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		if (!IsPostBack)
		{
			// teamList.AssociationId = base.LeagueId;
			// teamList.LeagueId = base.LeagueId;
			base.DataBind();
		}
	}
}