using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Game
/// </summary>
partial class Game : IComparable<Game>
{
	public Team TeamAway { get { return this.Team1; } }

	public Team TeamHome { get { return this.Team; } }

	public int CompareTo(Game other)
	{
		return this.GameDateTime.CompareTo(other.GameDateTime);
	}
}