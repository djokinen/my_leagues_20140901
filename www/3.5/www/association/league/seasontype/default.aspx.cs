using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class association_league_seasonType_default : BasePage
{
	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		if (!IsPostBack)
		{
			// seasonTypeList.AssociationId = base.LeagueId;
			// seasonTypeList.LeagueId = base.LeagueId;
			base.DataBind();
		}
	}
}