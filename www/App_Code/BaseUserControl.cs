using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BaseMasterPage
/// </summary>
public class BaseUserControl : System.Web.UI.UserControl
{
	#region Viewstate Helper Methods
	private Guid _getViewState(string key)
	{
		if (ViewState[key] != null) { return (Guid)ViewState[key]; }
		else { return Guid.Empty; }
	}

	private void _setViewState(string key, Guid value)
	{
		ViewState[key] = value;
	}
	#endregion

	public Guid AssociationId { get { return _getViewState(Resources.Key.AssociationId); } set { _setViewState(Resources.Key.AssociationId, value); } }

	public Guid DivisionId { get { return _getViewState(Resources.Key.DivisionId); } set { _setViewState(Resources.Key.DivisionId, value); } }

	public Guid LeagueId { get { return _getViewState(Resources.Key.LeagueId); } set { _setViewState(Resources.Key.LeagueId, value); } }

	public Guid SeasonId { get { return _getViewState(Resources.Key.SeasonId); } set { _setViewState(Resources.Key.SeasonId, value); } }

	public Guid TeamId { get { return _getViewState(Resources.Key.TeamId); } set { _setViewState(Resources.Key.TeamId, value); } }
}