using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BaseMasterPage
/// </summary>
public class BaseUserControl : System.Web.UI.UserControl
{
	#region QueryString Help Methods

	protected string AssociationQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.AssociationId, this.AssociationId); } }

	protected string DivisionQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.DivisionId, this.DivisionId); } }

	protected string LeagueQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.LeagueId, this.LeagueId); } }

	protected string SeasonQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.SeasonId, this.SeasonId); } }

	protected string TeamQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.TeamId, this.TeamId); } }

	#endregion

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

	public Guid AssociationId { get { return _getViewState(Resources.Key.AssociationId); } set { _setViewState(Resources.Key.AssociationId, value); } }

	public Guid DivisionId { get { return _getViewState(Resources.Key.DivisionId); } set { _setViewState(Resources.Key.DivisionId, value); } }

	public Guid LeagueId { get { return _getViewState(Resources.Key.LeagueId); } set { _setViewState(Resources.Key.LeagueId, value); } }

	public Guid SeasonId { get { return _getViewState(Resources.Key.SeasonId); } set { _setViewState(Resources.Key.SeasonId, value); } }

	public Guid TeamId { get { return _getViewState(Resources.Key.TeamId); } set { _setViewState(Resources.Key.TeamId, value); } }

	#endregion
}