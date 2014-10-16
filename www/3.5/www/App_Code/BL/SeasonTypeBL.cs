using MyLeagues.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.BL
{
	public static class SeasonTypeBL
	{
		public static List<SeasonType> Get(Guid leagueId, bool enabledOnly)
		{
			return new SeasonTypeDao().Get(enabledOnly).Where(n => n.LeagueId == leagueId).ToList();
		}

		public static SeasonType GetBy(Guid seasonTypeId, bool enabledOnly)
		{
			return new SeasonTypeDao().GetBy(seasonTypeId, enabledOnly);
		}

		public static SeasonType Update(SeasonType seasonType)
		{
			return new SeasonTypeDao().Update(seasonType);
		}

		public static SeasonType Insert(SeasonType seasonType)
		{
			return new SeasonTypeDao().Insert(seasonType);
		}

		public static void Delete(SeasonType seasonType)
		{
			new SeasonTypeDao().Delete(seasonType);
		}

		public static void Delete(Guid seasonTypeId)
		{
			SeasonTypeDao dao = new SeasonTypeDao();
			SeasonType value = dao.GetBy(seasonTypeId, false);
			dao.Delete(value);
		}
	}
}