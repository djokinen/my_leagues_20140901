using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for CustomRequiredValidator
/// </summary>
namespace CustomControls
{
	public class CustomRequiredFieldValidator : RequiredFieldValidator
	{
		public CustomRequiredFieldValidator()
		{
			// this.ClientIDMode = System.Web.UI.ClientIDMode.Static;

			// default values if no other value is set
			base.CssClass = "error";
			base.Display = ValidatorDisplay.Dynamic;
			string tmp = "required"; // Utility.GetValue("required", ContextUtility.CurrentLanguageCulture);
			base.Text = tmp;
			base.ErrorMessage = tmp;
			base.ToolTip = tmp;
		}

		protected override void Render(System.Web.UI.HtmlTextWriter writer)
		{
			base.Render(writer);
		}
	}
}