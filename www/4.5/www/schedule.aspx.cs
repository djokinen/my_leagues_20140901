using MyLeagues.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class schedule : System.Web.UI.Page
{
	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		this.DataBind();
	}
	/*
	 * <th>Date</th>
	 * <th>Time</th>
	 * <th>Field</th>
	 * <th>Away</th>
	 * <th>Home</th>
	 * <th>Type</th>
	*/
	public override void DataBind()
	{
		base.DataBind();
		StringBuilder text = new StringBuilder();

		List<Game> gameList = GameBL.Get(false);
		for (int i = 0; i < gameList.Count; i++)
		{
			bool hasscore = gameList[i].GameScore != null;

			text.Append("<tr>");
			text.AppendFormat("<td>{0}</td>", gameList[i].GameDateTime.ToString("ddd MMM d"));
			text.AppendFormat("<td>{0}</td>", gameList[i].GameDateTime.ToString("h:mm"));
			text.AppendFormat("<td>{0}</td>", gameList[i].Field.Name);

			text.Append("<td>");
			text.Append(gameList[i].TeamAway.Name);
			if (hasscore) { text.Append(" (" + gameList[i].GameScore.ScoreAway + ")"); }
			text.Append("</td>");

			text.Append("<td>");
			text.Append(gameList[i].TeamHome.Name);
			if (hasscore) { text.Append(" (" + gameList[i].GameScore.ScoreHome + ")"); }
			text.Append("</td>");

			text.AppendFormat("<td>{0}</td>", gameList[i].Season.SeasonType.Name);
			text.Append("</tr>");


		}
		literalBody.Text = text.ToString();
	}
}