using MyLeagues.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.BL
{
	public static class DivisionTypeBL
	{
		public static List<DivisionType> Get(Guid leagueId, bool enabledOnly)
		{
			return new DivisionTypeDao().Get(enabledOnly).Where(n => n.LeagueId == leagueId).ToList();
		}

		public static DivisionType GetBy(Guid divisionTypeId, bool enabledOnly)
		{
			return new DivisionTypeDao().GetBy(divisionTypeId, enabledOnly);
		}

		public static DivisionType Update(DivisionType divisionType)
		{
			return new DivisionTypeDao().Update(divisionType);
		}

		public static DivisionType Insert(DivisionType divisionType)
		{
			return new DivisionTypeDao().Insert(divisionType);
		}

		public static void Delete(DivisionType divisionType)
		{
			new DivisionTypeDao().Delete(divisionType);
		}

		public static void Delete(Guid divisionTypeId)
		{
			DivisionTypeDao dao = new DivisionTypeDao();
			DivisionType value = dao.GetBy(divisionTypeId, false);
			dao.Delete(value);
		}
	}
}