using MyLeagues.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.BL
{
	public static class LeagueBL
	{
		public static List<League> Get(Guid associationId, bool enabledOnly)
		{
			return new LeagueDao().Get(enabledOnly).Where(n=> n.AssociationId == associationId).ToList();
		}

		public static League GetBy(Guid leagueId, bool enabledOnly)
		{
			return new LeagueDao().GetBy(leagueId, enabledOnly);
		}

		public static League Update(League league)
		{
			return new LeagueDao().Update(league);
		}

		public static League Insert(League league)
		{
			return new LeagueDao().Insert(league);
		}

		public static void Delete(League league)
		{
			new LeagueDao().Delete(league);
		}

		public static void Delete(Guid leagueId)
		{
			LeagueDao dao = new LeagueDao();
			League value = dao.GetBy(leagueId, false);
			dao.Delete(value);
		}
	}
}