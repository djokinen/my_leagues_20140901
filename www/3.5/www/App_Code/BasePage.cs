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
			return new Guid(Request.QueryString[Resources.Key.AssociationId]);
		}
	}

	protected Guid LeagueId
	{
		get
		{
			return new Guid(Request.QueryString[Resources.Key.LeagueId]);
		}
	}
}