using MyLeagues.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_DivisionType_Detail : BaseUserControl
{
	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		// buttonCancel.Click += buttonCancel_Click;
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
				DivisionType team = DivisionTypeBL.GetBy(base.DivisionTypeId, false);
				if (team == null)
				{
					// insert
					team = new DivisionType();
					team.Name = TextName.Text;
					team.LeagueId = base.LeagueId;
					team.Description = TextDescription.Text;
					team = DivisionTypeBL.Insert(team);
				}
				else
				{
					// update
					team.Name = TextName.Text;
					team.Description = TextDescription.Text;
					team = DivisionTypeBL.Update(team);
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
		DivisionTypeBL.Delete(base.DivisionTypeId);
		_redirectToListUrl();
	}

	public override void DataBind()
	{
		base.DataBind();
		DivisionType team = MyLeagues.BL.DivisionTypeBL.GetBy(base.DivisionTypeId, false);
		if (team != null)
		{
			TextName.Text = team.Name;
			TextDescription.Text = team.Description;
		}
		else { buttonDelete.Visible = false; }

		linkSeasonList.HRef = new NotImplementedException().Message;
		linkCancel.HRef = base.GetDivisionTypeListUrl();
	}

	private void _redirectToListUrl()
	{
		Response.Redirect(base.GetDivisionTypeListUrl(), true);
	}
}