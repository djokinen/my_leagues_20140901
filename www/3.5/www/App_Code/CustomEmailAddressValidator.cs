using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for CustomRequiredValidator
/// </summary>
namespace CustomControls
{
	public class CustomEmailAddressValidator : CustomRegularExpressionValidator
	{
		private const string _DefaultErrorMessage = "Invalid Email Address";

		[Obsolete("RFC2822 Superseded by RFC5322", true)]
		private const string _EmailAddressRegexRfc2822 = @"^(([^<>()[\]\\.,;:\s@\""]+(\.[^<>()[\]\\.,;:\s@\""]+)*)|(\"".+\""))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$";
		private const string _EmailAddressRegexRfc5322 = @"^[-!#$%&'*+/0-9=?A-Z^_a-z{|}~](\.?[-!#$%&'*+/0-9=?A-Z^_a-z{|}~])*@[a-zA-Z](-?[a-zA-Z0-9])*(\.[a-zA-Z](-?[a-zA-Z0-9])*)+$";

		public CustomEmailAddressValidator()
			: base()
		{
			// set default values;
			base.ErrorMessage = _DefaultErrorMessage;
			base.ValidationExpression = _EmailAddressRegexRfc5322;
		}

		public new string ValidationExpression { get { return base.ValidationExpression; } }

		[DefaultValue(_DefaultErrorMessage)]
		public new string ErrorMessage { get { return base.ErrorMessage; } set { base.ErrorMessage = value; } }
	}
}