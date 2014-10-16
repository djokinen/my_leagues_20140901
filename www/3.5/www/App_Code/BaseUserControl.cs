using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BaseMasterPage
/// </summary>
public class BaseUserControl : System.Web.UI.UserControl
{
	#region association

	protected Guid AssociationId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.AssociationId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}
	
	protected string GetAssociationListUrl() { return Resources.Key.AssociationListUrl; }
	
	protected string GetAssociationUrl(Guid associationId) { return GetAssociationUrl(associationId.ToString()); }
	
	protected string GetAssociationUrl(string associationId) { return string.Format("{0}?{1}={2}", Resources.Key.AssociationUrl, Resources.Key.AssociationId, associationId); }
	
	private string _associationQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.AssociationId, this.AssociationId); } }
	
	#endregion

	#region division

	protected Guid DivisionId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.DivisionId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}

	protected string GetDivisionListUrl() { return string.Format("{0}?{1}&{2}", Resources.Key.DivisionListUrl, this._associationQueryStringPair, this._leagueQueryStringPair); }
	
	protected string GetDivisionUrl(Guid divisionId) { return GetDivisionUrl(divisionId.ToString()); }
	
	protected string GetDivisionUrl(string divisionId) { return string.Format("{0}?{1}&{2}&{3}={4}", Resources.Key.DivisionUrl, this._associationQueryStringPair, this._leagueQueryStringPair, Resources.Key.DivisionId, divisionId); }
	
	private string _divisionQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.DivisionId, this.DivisionId); } }

	#endregion

	#region league

	protected Guid LeagueId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.LeagueId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}
	
	protected string GetLeagueListUrl() { return string.Format("{0}?{1}", Resources.Key.LeagueListUrl, this._associationQueryStringPair); }
	
	protected string GetLeagueUrl(Guid leagueId) { return GetLeagueUrl(leagueId.ToString()); }
	
	protected string GetLeagueUrl(string leagueId) { return string.Format("{0}?{1}&{2}={3}", Resources.Key.LeagueUrl, this._associationQueryStringPair, Resources.Key.LeagueId, leagueId); }
	
	private string _leagueQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.LeagueId, this.LeagueId); } }

	#endregion

	#region season

	protected Guid SeasonId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.SeasonId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}
	
	protected string GetSeasonListUrl() { return string.Format("{0}?{1}&{2}", Resources.Key.SeasonListUrl, this._associationQueryStringPair, this._leagueQueryStringPair); }
	
	protected string GetSeasonUrl(Guid seasonId) { return GetSeasonUrl(seasonId.ToString()); }
	
	protected string GetSeasonUrl(string seasonId) { return string.Format("{0}?{1}&{2}&{3}={4}", Resources.Key.SeasonUrl, this._associationQueryStringPair, this._leagueQueryStringPair, Resources.Key.SeasonId, seasonId); }
	
	private string _seasonQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.SeasonId, this.SeasonId); } }

	#endregion

	#region team

	protected Guid TeamId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.TeamId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}
	
	protected string GetTeamListUrl() { return string.Format("{0}?{1}&{2}", Resources.Key.TeamListUrl, this._associationQueryStringPair, this._leagueQueryStringPair); }
	
	protected string GetTeamUrl(Guid teamId) { return string.Format("{0}?{1}&{2}&{3}={4}", Resources.Key.TeamUrl, this._associationQueryStringPair, this._leagueQueryStringPair, Resources.Key.TeamId, teamId); }
	
	protected string GetTeamUrl(string teamId) { return string.Format("{0}?{1}&{2}&{3}={4}", Resources.Key.TeamUrl, this._associationQueryStringPair, this._leagueQueryStringPair, Resources.Key.TeamId, teamId); }
	
	private string _teamQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.TeamId, this.TeamId); } }

	#endregion
}