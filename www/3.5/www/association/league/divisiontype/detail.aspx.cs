﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class association_league_divisionType_detail : BasePage
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
		// divisionTypeDetail.DivisionTypeId = base.DivisionTypeId;
		// divisionTypeDetail.LeagueId = base.LeagueId;
		// divisionTypeDetail.AssociationId = base.AssociationId;
		base.DataBind();
	}
}