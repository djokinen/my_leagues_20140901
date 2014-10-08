using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomControls
{
	public class CustomTextBox : TextBox
	{
		public CustomTextBox()
		{
			// this.ClientIDMode = ClientIDMode.Static;
		}

		[DefaultValue(false)]
		public bool Required { get; set; }

		[DefaultValue("")]
		public string PlaceholderText { get; set; }

		protected override void Render(HtmlTextWriter writer)
		{
			if (this.Required)
			{
				writer.AddAttribute("required", "required");
				writer.AddAttribute("aria-required", "required");
			}
			if (!string.IsNullOrEmpty(this.PlaceholderText))
			{
				writer.AddAttribute("placeholder", this.PlaceholderText);
			}

			if (string.IsNullOrEmpty(this.ToolTip)) { this.ToolTip = this.PlaceholderText; }

			base.Render(writer);
		}
	}
}