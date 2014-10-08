using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.Dao
{
	public class LeagueDao
	{
		private List<League> _get()
		{
			return (from t in DataContextHelper.CurrentContext.Leagues
					  orderby t.Name
					  select t).ToList<League>();
		}

		public List<League> Get(bool enabledOnly)
		{
			return (from t in this._get()
					  where (!enabledOnly || t.Enabled)
					  select t).ToList();
		}

		public League GetBy(Guid leagueId, bool enabledOnly)
		{
			return this.Get(enabledOnly).FirstOrDefault<League>(a => (a.ID == leagueId));
		}

		public League Update(League league)
		{
			League value = DataContextHelper.CurrentContext.Leagues.FirstOrDefault<League>(n => n.ID.Equals(league.ID));
			if (value != null)
			{
				value.Name = league.Name.Trim();
				value.Website = league.Website.Trim();
				value.Description = league.Description.Trim();
				value.Enabled = league.Enabled;
				value.Modified = DateTime.Now;
				DataContextHelper.CurrentContext.SubmitChanges();
			}
			return value;
		}

		public League Insert(League league)
		{
			league.Enabled = true;
			league.ID = Guid.NewGuid();
			league.Created = DateTime.Now;
			league.Modified = DateTime.Now;
			DataContextHelper.CurrentContext.Leagues.InsertOnSubmit(league);
			DataContextHelper.CurrentContext.SubmitChanges();
			return league;
		}

		public void Delete(League league)
		{
			DataContextHelper.CurrentContext.Leagues.DeleteOnSubmit(league);
			DataContextHelper.CurrentContext.SubmitChanges();
		}
	}
}