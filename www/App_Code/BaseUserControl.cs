using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BaseMasterPage
/// </summary>
public class BaseUserControl : System.Web.UI.UserControl
{
	public Guid AssociationId
	{
		get
		{
			if (ViewState[Resources.Key.AssociationId] != null)
			{
				return (Guid)ViewState[Resources.Key.AssociationId];
			}
			else { return Guid.Empty; }
		}
		set { ViewState[Resources.Key.AssociationId] = value; }
	}
}