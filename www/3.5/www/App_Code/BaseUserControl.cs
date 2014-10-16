using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BaseMasterPage
/// </summary>
public class BaseUserControl : System.Web.UI.UserControl
{
	protected string GetAssociationListUrl()
	{
		return Resources.Key.AssociationListUrl;
	}

	protected string GetAssociationUrl(Guid associationId)
	{
		return string.Format("{0}?{1}", Resources.Key.AssociationUrl, this._associationQueryStringPair);
	}

	protected string GetLeagueListUrl()
	{
		return string.Format("{0}?{1}", Resources.Key.LeagueListUrl, this._associationQueryStringPair);
	}

	protected string GetLeagueUrl(Guid leagueId)
	{
		return string.Format("{0}?{1}&{2}={3}", Resources.Key.LeagueUrl, this._associationQueryStringPair, Resources.Key.LeagueId, leagueId);
	}

	protected string GetDivisionListUrl()
	{
		return string.Format("{0}?{1}&{2}", Resources.Key.DivisionListUrl, this._associationQueryStringPair, this._leagueQueryStringPair);
	}

	protected string GetDivisionUrl(Guid divisionId)
	{
		return string.Format("{0}?{1}&{2}&{3}={4}", Resources.Key.DivisionUrl, this._associationQueryStringPair, this._leagueQueryStringPair, Resources.Key.DivisionId, divisionId);
	}

	protected string GetSeasonListUrl()
	{
		return string.Format("{0}?{1}&{2}", Resources.Key.SeasonListUrl, this._associationQueryStringPair, this._leagueQueryStringPair);
	}

	protected string GetSeasonUrl(Guid seasonId)
	{
		return string.Format("{0}?{1}&{2}&{3}={4}", Resources.Key.SeasonUrl, this._associationQueryStringPair, this._leagueQueryStringPair, Resources.Key.SeasonId, seasonId);
	}

	protected string GetTeamListUrl()
	{
		return string.Format("{0}?{1}&{2}", Resources.Key.TeamListUrl, this._associationQueryStringPair, this._leagueQueryStringPair);
	}

	protected string GetTeamUrl(Guid teamId)
	{
		return string.Format("{0}?{1}&{2}&{3}={4}", Resources.Key.TeamUrl, this._associationQueryStringPair, this._leagueQueryStringPair, Resources.Key.TeamId, teamId);
	}

	protected string GetTeamUrl(string teamId)
	{
		return string.Format("{0}?{1}&{2}&{3}={4}", Resources.Key.TeamUrl, this._associationQueryStringPair, this._leagueQueryStringPair, Resources.Key.TeamId, teamId);
	}

	#region QueryString Help Methods

	private string _associationQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.AssociationId, this.AssociationId); } }

	private string _divisionQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.DivisionId, this.DivisionId); } }

	private string _leagueQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.LeagueId, this.LeagueId); } }

	private string _seasonQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.SeasonId, this.SeasonId); } }

	private string _teamQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.TeamId, this.TeamId); } }

	#endregion

	#region Viewstate Helper Methods
	/*
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
	*/
	#endregion

	protected Guid AssociationId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.AssociationId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}

	protected Guid DivisionId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.DivisionId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}

	protected Guid LeagueId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.LeagueId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}

	protected Guid SeasonId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.SeasonId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}

	protected Guid TeamId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.TeamId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}
}