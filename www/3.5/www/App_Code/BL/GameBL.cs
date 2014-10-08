using MyLeagues.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyLeagues.BL
{
	public static class GameBL
	{
		public static List<Game> Get(bool enabledOnly)
		{
			return new GameDao().Get(enabledOnly);
		}

		public static Game GetBy(Guid gameId, bool enabledOnly)
		{
			return new GameDao().GetBy(gameId, enabledOnly);
		}

		public static Game Update(Game game)
		{
			return new GameDao().Update(game);
		}

		public static Game Insert(Game game)
		{
			return new GameDao().Insert(game);
		}

		public static void Delete(Game game)
		{
			new GameDao().Delete(game);
		}

		public static void Delete(Guid gameId)
		{
			GameDao dao = new GameDao();
			Game value = dao.GetBy(gameId, false);
			dao.Delete(value);
		}
	}
}