using MyLeagues.BO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomControls
{
	[DefaultProperty("ButtonAction")]
	public class CustomButton : Button
	{
		public CustomButton()
		{
			this.ClientIDMode = ClientIDMode.Static;
		}

		[DefaultValue(true)]
		public bool HideDefaultDeleteConfirmationMessage { get; set; }

		[DefaultValue(ButtonActionType.None)]
		public ButtonActionType ButtonAction { get; set; }

		protected override void Render(HtmlTextWriter writer)
		{
			bool isnull = string.IsNullOrWhiteSpace(base.Text);
			switch (this.ButtonAction)
			{
				case ButtonActionType.None:
					break;
				case ButtonActionType.Create:
					if (isnull) { this.Text = "create"; }
					break;
				case ButtonActionType.Save:
					if (isnull) { this.Text = "save"; }
					break;
				case ButtonActionType.Cancel:
					if (isnull) { this.Text = "cancel"; }
					this.CausesValidation = false;
					this.CssClass = "secondary";
					this.Attributes.Add("formnovalidate", "formnovalidate");
					break;
				case ButtonActionType.Delete:
					if (isnull) { this.Text = "delete"; }
					if (!this.HideDefaultDeleteConfirmationMessage)
					{
						string msg = "Are you sure ou want to delete this record?";
						this.OnClientClick =
							string.Format("if (!confirm('{0}')) return false;", msg);
					}
					this.CausesValidation = false;
					this.CssClass = "important";
					this.Attributes.Add("formnovalidate", "formnovalidate");
					break;
				default:
					break;
			}
			if (string.IsNullOrEmpty(this.ToolTip)) { this.ToolTip = this.Text; }

			if (!base.CausesValidation) { this.Attributes.Add("formnovalidate", "formnovalidate"); }

			base.Render(writer);
		}
	}
}