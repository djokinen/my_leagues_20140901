using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.Dao
{
	public class TeamDao
	{
		private List<Team> _get()
		{
			return (from t in DataContextHelper.CurrentContext.Teams.AsParallel()
					  orderby t.Name
					  select t).ToList<Team>();
		}

		public List<Team> Get(bool enabledOnly)
		{
			return (from t in this._get()
					  where (!enabledOnly || t.Enabled)
					  select t).ToList();
		}

		public Team GetBy(Guid teamId, bool enabledOnly)
		{
			return this.Get(enabledOnly).FirstOrDefault<Team>(a => (a.ID == teamId));
		}

		public Team Update(Team team)
		{
			Team value = DataContextHelper.CurrentContext.Teams.FirstOrDefault<Team>(n => n.ID.Equals(team.ID));
			if (value != null)
			{
				value.Name = team.Name.Trim();
				value.Description = team.Description.Trim();
				value.Enabled = team.Enabled;
				value.Modified = DateTime.Now;
				DataContextHelper.CurrentContext.SubmitChanges();
			}
			return value;
		}

		public Team Insert(Team team)
		{
			team.Enabled = true;
			team.ID = Guid.NewGuid();
			team.Created = DateTime.Now;
			team.Modified = DateTime.Now;
			DataContextHelper.CurrentContext.Teams.InsertOnSubmit(team);
			DataContextHelper.CurrentContext.SubmitChanges();
			return team;
		}

		public void Delete(Team team)
		{
			DataContextHelper.CurrentContext.Teams.DeleteOnSubmit(team);
			DataContextHelper.CurrentContext.SubmitChanges();
		}
	}
}