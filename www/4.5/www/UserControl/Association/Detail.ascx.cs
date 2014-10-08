using MyLeagues.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_Association_Detail : BaseUserControl
{
	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		buttonCancel.Click += buttonCancel_Click;
		buttonDelete.Click += buttonDelete_Click;
		buttonSave.Click += buttonSave_Click;
		buttonLeagueList.Click += buttonLeagueList_Click;
	}

	void buttonLeagueList_Click(object sender, EventArgs e)
	{
		Response.Redirect(string.Format("{0}?{1}", Resources.Key.LeagueListUrl,
			base.AssociationQueryStringPair), true);
	}

	void buttonSave_Click(object sender, EventArgs e)
	{
		try
		{
			Page.Validate();
			if (Page.IsValid)
			{
				Association association = AssociationBL.GetBy(base.AssociationId, false);
				if (association == null)
				{
					// insert
					association = new Association();
					association.Name = TextName.Text;
					association.Description = TextDescription.Text;
					association = AssociationBL.Insert(association);
				}
				else
				{
					// update
					association.Name = TextName.Text;
					association.Description = TextDescription.Text;
					association = AssociationBL.Update(association);
				}
				if (association == null) { message.Text = "Save failed"; }
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
		AssociationBL.Delete(base.AssociationId);
		_redirectToListUrl();
	}

	void buttonCancel_Click(object sender, EventArgs e) { _redirectToListUrl(); }

	public override void DataBind()
	{
		base.DataBind();
		Association association = MyLeagues.BL.AssociationBL.GetBy(base.AssociationId, false);
		if (association != null)
		{
			TextName.Text = association.Name;
			TextDescription.Text = association.Description;
		}
		else { buttonDelete.Visible = false; }
	}

	private void _redirectToListUrl() { Response.Redirect(Resources.Key.AssociationListUrl, true); }
}