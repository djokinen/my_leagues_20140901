using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_Form_TextBox : System.Web.UI.UserControl
{
	public override string ID
	{
		get { return base.ID; }
		set
		{
			base.ID = value;
			lbl.ID = this.ID + "Label";
			txt.ID = this.ID + "Text";
			txt.ID = this.ID; //  +"Text";
			req.ID = this.ID + "Required";
			eml.ID = this.ID + "Email";
		}
	}

	protected override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		if (!IsPostBack)
		{
			lbl.Attributes["for"] = txt.ID;
			txt.Attributes["aria-describedby"] = req.ID;
			txt.Attributes["aria-invalid"] = false.ToString();
			txt.PlaceholderText = this.Label;

			req.ControlToValidate = txt.ID;
			eml.ControlToValidate = txt.ID;

			eml.Text = Resources.enUS.invalidemail;
			eml.ErrorMessage = Resources.enUS.invalidemail;

			req.Enabled = this.IsRequired;
			eml.Enabled = this.IsEmail;
		}
	}

	new public AttributeCollection Attributes { get { return txt.Attributes; } }

	public AutoCompleteType AutoCompleteType { get { return txt.AutoCompleteType; } set { txt.AutoCompleteType = value; } }

	/// <summary>Gets and sets the max length that can be display</summary>
	public int MaxLength { get { return txt.MaxLength; } set { txt.MaxLength = value; } }

	/// <summary>Clear content from control</summary>
	public void Clear() { txt.Text = string.Empty; }

	/// <summary>Gets and sets if this field is required or not</summary>
	public bool IsRequired
	{
		get { return req.Enabled; }
		set
		{
			req.Enabled = value;
			txt.Required = value;
		}
	}

	/// <summary>Gets and sets if this field is an email address field</summary>
	public bool IsEmail
	{
		get { return eml.Enabled; }
		set
		{
			eml.Enabled = value;
			this.IsMaxWidth = value;
			txt.Attributes["type"] = "email";
		}
	}

	/// <summary>Gets and sets if this field is an email address field</summary>
	public bool IsMaxWidth
	{
		get { return txt.Attributes["class"].Contains("maxwidth"); }
		set
		{
			if (value)
			{
				txt.CssClass += "maxwidth";
			}
			else
			{
				txt.CssClass = string.Empty;
			}
		}
	}

	/// <summary>
	/// Gets or sets the behavior mode (single-line, multiline, or password) of the System.Web.UI.WebControls.TextBox control.
	/// </summary>
	public TextBoxMode TextMode
	{
		get { return txt.TextMode; }
		set
		{
			if (value == TextBoxMode.MultiLine) { this.IsMaxWidth = true; }
			txt.TextMode = value;
		}
	}

	/// <summary>Gets and sets the name of the label for this field</summary>
	/// <remarks>
	/// On Get: remove literal error element if it exists
	/// On Set: add literal error element if this is a required field
	/// </remarks>
	public string Label { get { return lbl.InnerText; } set { lbl.InnerText = value; } }

	/// <summary>Gets and sets the value of the input for this field</summary>
	public string Text { get { return txt.Text.Trim(); } set { txt.Text = value; } }

	/// <summary>Gets and sets the tooltip of the input for this field</summary>
	public string ToolTip { get { return txt.ToolTip; } set { txt.ToolTip = value; } }

	/// <summary>Gets and sets the value of the input for this field</summary>
	// public Unit WidthTextBox { get { return txt.Width; } set { txt.Width = value; } }

	/// <summary>Gets or sets the validation group this field belongs to</summary>
	public string ValidationGroup
	{
		get { return req.ValidationGroup; }
		set
		{
			req.ValidationGroup = value;
			eml.ValidationGroup = value;
		}
	}

	/// <summary>Gets and sets the enabled status for this field</summary>
	public bool Enabled
	{
		get { return txt.Enabled; }
		set
		{
			txt.Enabled = value;
			txt.ReadOnly = !value;
		}
	}
}