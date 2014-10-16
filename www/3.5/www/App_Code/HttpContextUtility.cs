using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class HttpContextUtility 
{
	protected string GetAssociationListUrl()
	{
		return Resources.Key.AssociationListUrl;
	}

	protected string GetAssociationUrl(Guid associationId)
	{
		return string.Format("{0}?{1}", Resources.Key.AssociationUrl, _associationQueryStringPair);
		// <a href="detail.aspx?<%= Resources.Key.AssociationId %>=<%# Eval("ID") %>">
	}

	private string _associationQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.AssociationId, this._associationId); } }

	private string _divisionQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.DivisionId, this._divisionId); } }

	private string _leagueQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.LeagueId, this._leagueId); } }

	private string _seasonQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.SeasonId, this._seasonId); } }

	private string _teamQueryStringPair { get { return string.Format("{0}={1}", Resources.Key.TeamId, this._teamId); } }

	private Guid _associationId
	{
		get
		{
			return new Guid(HttpContext.Current.Request.QueryString[Resources.Key.AssociationId]);
		}
	}

	private Guid _divisionId
	{
		get
		{
			return new Guid(HttpContext.Current.Request.QueryString[Resources.Key.DivisionId]);
		}
	}

	private Guid _leagueId
	{
		get
		{
			return new Guid(HttpContext.Current.Request.QueryString[Resources.Key.LeagueId]);
		}
	}

	private Guid _seasonId
	{
		get
		{
			return new Guid(HttpContext.Current.Request.QueryString[Resources.Key.SeasonId]);
		}
	}

	private Guid _teamId
	{
		get
		{
			return new Guid(HttpContext.Current.Request.QueryString[Resources.Key.TeamId]);
		}
	}
}