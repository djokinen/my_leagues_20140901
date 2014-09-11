using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class master_Root : BaseMasterPage
{
	protected override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		Page.Header.Title =
			string.Format("My Leagues{0}",
			string.IsNullOrWhiteSpace(Page.Title) ? string.Empty : " | " + Page.Title);
	}
}