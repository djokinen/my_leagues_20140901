using MyLeagues.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_Association_List : BaseUserControl
{
	public override void DataBind()
	{
		base.DataBind();
		repeater.DataSource = AssociationBL.Get(false);
		repeater.DataBind();
	}
}