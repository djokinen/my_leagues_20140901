using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.Dao
{
	public class GameDao
	{
		private List<Game> _get()
		{
			return (from t in DataContextHelper.CurrentContext.Games.AsParallel()
					  orderby t.GameDateTime descending
					  select t).ToList<Game>();
		}

		public List<Game> Get(bool enabledOnly)
		{
			return (from t in this._get()
					  where (!enabledOnly || t.Enabled)
					  select t).ToList();
		}

		public Game GetBy(Guid gameId, bool enabledOnly)
		{
			return this.Get(enabledOnly).FirstOrDefault<Game>(a => (a.ID == gameId));
		}

		public Game Update(Game game)
		{
			Game value = DataContextHelper.CurrentContext.Games.FirstOrDefault<Game>(n => n.ID.Equals(game.ID));
			if (value != null)
			{
				value.Description = game.Description.Trim();
				value.Enabled = game.Enabled;
				value.FieldId = game.FieldId;
				value.GameDateTime = game.GameDateTime;
				value.Modified = DateTime.Now;
				value.SeasonId = game.SeasonId;
				value.TeamIdAway = game.TeamIdAway;
				value.TeamIdHome = game.TeamIdHome;
				value.Modified = DateTime.Now;
				DataContextHelper.CurrentContext.SubmitChanges();
			}
			return value;
		}

		public Game Insert(Game game)
		{
			game.Enabled = true;
			game.ID = Guid.NewGuid();
			game.Created = DateTime.Now;
			game.Modified = DateTime.Now;
			DataContextHelper.CurrentContext.Games.InsertOnSubmit(game);
			DataContextHelper.CurrentContext.SubmitChanges();
			return game;
		}

		public void Delete(Game game)
		{
			DataContextHelper.CurrentContext.Games.DeleteOnSubmit(game);
			DataContextHelper.CurrentContext.SubmitChanges();
		}
	}
}