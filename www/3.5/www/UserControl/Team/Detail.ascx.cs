using MyLeagues.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_Team_Detail : BaseUserControl
{
	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		buttonCancel.Click += buttonCancel_Click;
		buttonDelete.Click += buttonDelete_Click;
		buttonSave.Click += buttonSave_Click;
	}

	void buttonSave_Click(object sender, EventArgs e)
	{
		try
		{
			Page.Validate();
			if (Page.IsValid)
			{
				Team team = TeamBL.GetBy(base.TeamId, false);
				if (team == null)
				{
					// insert
					team = new Team();
					team.Name = TextName.Text;
					team.Description = TextDescription.Text;
					team = TeamBL.Insert(team);
				}
				else
				{
					// update
					team.Name = TextName.Text;
					team.Description = TextDescription.Text;
					team = TeamBL.Update(team);
				}
				if (team == null) { message.Text = "Save failed"; }
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
		TeamBL.Delete(base.TeamId);
		_redirectToListUrl();
	}

	void buttonCancel_Click(object sender, EventArgs e) { _redirectToListUrl(); }

	public override void DataBind()
	{
		base.DataBind();
		Team team = MyLeagues.BL.TeamBL.GetBy(base.TeamId, false);
		if (team != null)
		{
			TextName.Text = team.Name;
			TextDescription.Text = team.Description;
		}
		else { buttonDelete.Visible = false; }
	}

	private void _redirectToListUrl() { Response.Redirect(Resources.Key.TeamListUrl, true); }
}