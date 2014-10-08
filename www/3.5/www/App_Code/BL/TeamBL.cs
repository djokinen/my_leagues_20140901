using MyLeagues.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.BL
{
	public static class TeamBL
	{
		public static List<Team> Get(bool enabledOnly)
		{
			return new TeamDao().Get(enabledOnly);
		}

		public static Team GetBy(Guid teamId, bool enabledOnly)
		{
			return new TeamDao().GetBy(teamId, enabledOnly);
		}

		public static Team Update(Team team)
		{
			return new TeamDao().Update(team);
		}

		public static Team Insert(Team team)
		{
			return new TeamDao().Insert(team);
		}

		public static void Delete(Team team)
		{
			new TeamDao().Delete(team);
		}

		public static void Delete(Guid teamId)
		{
			TeamDao dao = new TeamDao();
			Team value = dao.GetBy(teamId, false);
			dao.Delete(value);
		}
	}
}