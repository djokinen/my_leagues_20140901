using MyLeagues.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_League_Detail : BaseUserControl
{
	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		buttonSave.Click += buttonSave_Click;
		buttonCancel.Click += buttonCancel_Click;
		buttonDelete.Click += buttonDelete_Click;
	}

	void buttonSave_Click(object sender, EventArgs e)
	{
		try
		{
			Page.Validate();
			if (Page.IsValid)
			{
				League league = LeagueBL.GetBy(base.LeagueId, false);
				if (league == null)
				{
					// insert
					league = new League();
					league.AssociationId = base.AssociationId;
					league.Name = TextName.Text;
					league.Description = TextDescription.Text;
					league = LeagueBL.Insert(league);
				}
				else
				{
					// update
					league.Name = TextName.Text;
					// league.AssociationId = base.AssociationId;
					league.Description = TextDescription.Text;
					league = LeagueBL.Update(league);
				}
				if (league == null) { message.Text = "Save failed"; }
				else { _redirectToListUrl(); }
			}
		}
		catch (Exception ex)
		{
			message.Text = ex.Message;
		}
	}

	void buttonDelete_Click(object sender, EventArgs e)
	{
		LeagueBL.Delete(base.LeagueId);
		_redirectToListUrl();
	}

	void buttonCancel_Click(object sender, EventArgs e) { _redirectToListUrl(); }

	public override void DataBind()
	{
		base.DataBind();
		League league = MyLeagues.BL.LeagueBL.GetBy(base.LeagueId, false);
		if (league != null)
		{
			TextName.Text = league.Name;
			TextDescription.Text = league.Description;
		}
		else { buttonDelete.Visible = false; }

		linkDivisionList.HRef = base.GetDivisionListUrl();
		linkSeasonList.HRef = base.GetSeasonListUrl();
		linkTeamList.HRef = base.GetTeamListUrl();
	}

	private void _redirectToListUrl()
	{
		Response.Redirect(base.GetLeagueListUrl(), true);
	}
}