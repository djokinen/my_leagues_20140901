using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BaseMasterPage
/// </summary>
public class BasePage : System.Web.UI.Page
{
	protected Guid AssociationId
	{
		get
		{
			Guid value;
			Guid.TryParse(Request.QueryString[Resources.Key.AssociationId], out value);
			return value;
		}
	}

	protected Guid LeagueId
	{
		get
		{
			Guid value;
			Guid.TryParse(Request.QueryString[Resources.Key.LeagueId], out value);
			return value;
		}
	}
}