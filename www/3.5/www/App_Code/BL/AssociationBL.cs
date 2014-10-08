using MyLeagues.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.BL
{
	public static class AssociationBL
	{
		public static List<Association> Get(bool enabledOnly)
		{
			return new AssociationDao().Get(enabledOnly);
		}

		public static Association GetBy(Guid associationId, bool enabledOnly)
		{
			return new AssociationDao().GetBy(associationId, enabledOnly);
		}

		public static Association Update(Association association)
		{
			return new AssociationDao().Update(association);
		}

		public static Association Insert(Association association)
		{
			return new AssociationDao().Insert(association);
		}

		public static void Delete(Association association)
		{
			new AssociationDao().Delete(association);
		}

		public static void Delete(Guid associationId)
		{
			AssociationDao dao = new AssociationDao();
			Association value = dao.GetBy(associationId, false);
			dao.Delete(value);
		}
	}
}