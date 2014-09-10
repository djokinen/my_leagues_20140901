using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyLeagues.Dao.ServiceLayer;
using System.Configuration;

namespace MyLeagues.Dao
{
	internal static class DataContextHelper
	{
		public static MyLeaguesDataContext CurrentContext
		{
			get
			{
				string key = Resources.Key.MyLeaguesDataContext;
				if (UnitOfWorkHelper.CurrentDataStore[key] == null)
				{
					UnitOfWorkHelper.CurrentDataStore[key]
						 = new MyLeaguesDataContext(ConfigurationManager.ConnectionStrings[Resources.Key.MyLeaguesConnectionStringName].ConnectionString);
				}
				return (MyLeaguesDataContext)UnitOfWorkHelper.CurrentDataStore[key];
			}
		}
	}
}

namespace MyLeagues.Dao.ServiceLayer
{
	public interface IUnitOfWorkDataStore
	{
		object this[string key] { get; set; }
	}
	public static class UnitOfWorkHelper
	{
		public static IUnitOfWorkDataStore CurrentDataStore;
	}
}