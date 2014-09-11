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
	[DefaultProperty("MessageType")]
	public class CustomMessage : Control
	{
		public MessageType MessageType { get; set; }

		public string NavigateUrl { get; set; }

		public string Text { get; set; }

		protected override void Render(HtmlTextWriter writer)
		{
			if (!string.IsNullOrWhiteSpace(this.Text))
			{
				string css = string.Empty;
				switch (this.MessageType)
				{
					case MessageType.Information:
						css = "information";
						break;
					case MessageType.Warning:
						css = "warning";
						break;
					case MessageType.Error:
						css = "error-message";
						break;
				}

				writer.Write("<div class=\"{0}\">", css);
				if (string.IsNullOrWhiteSpace(this.NavigateUrl))
				{
					// label
					writer.Write("<span>{0}</span>", this.Text);
				}
				else
				{
					// link
					writer.Write("<a href=\"{0}\">{1}</a>", this.NavigateUrl, this.Text);
				}
				writer.Write("</div>");
			}
			base.Render(writer);
		}
	}
}