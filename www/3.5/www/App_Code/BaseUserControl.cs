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

	#region division type

	protected Guid DivisionTypeId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.DivisionTypeId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}

	protected string GetDivisionTypeListUrl() { return string.Format("{0}?{1}&{2}", Resources.Key.DivisionTypeListUrl, this._associationQueryStringPair, this._leagueQueryStringPair); }

	protected string GetDivisionTypeUrl(Guid divisionTypeId) { return GetDivisionTypeUrl(divisionTypeId.ToString()); }

	protected string GetDivisionTypeUrl(string divisionTypeId) { return string.Format("{0}?{1}&{2}&{3}={4}", Resources.Key.DivisionTypeUrl, this._associationQueryStringPair, this._leagueQueryStringPair, Resources.Key.DivisionTypeId, divisionTypeId); }

	private string _divisionTypeQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.DivisionTypeId, this.DivisionTypeId); } }

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

	#region seasonType

	protected Guid SeasonTypeId
	{
		get
		{
			string value = Request.QueryString[Resources.Key.SeasonTypeId];
			if (string.IsNullOrEmpty(value)) { return Guid.Empty; }
			else { return new Guid(value); }
		}
	}
	
	protected string GetSeasonTypeListUrl() { return string.Format("{0}?{1}&{2}", Resources.Key.SeasonTypeListUrl, this._associationQueryStringPair, this._leagueQueryStringPair); }
	
	protected string GetSeasonTypeUrl(Guid seasonTypeId) { return GetSeasonTypeUrl(seasonTypeId.ToString()); }
	
	protected string GetSeasonTypeUrl(string seasonTypeId) { return string.Format("{0}?{1}&{2}&{3}={4}", Resources.Key.SeasonTypeUrl, this._associationQueryStringPair, this._leagueQueryStringPair, Resources.Key.SeasonTypeId, seasonTypeId); }
	
	private string _seasonTypeQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.SeasonTypeId, this.SeasonTypeId); } }

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