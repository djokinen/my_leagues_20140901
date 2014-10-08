using System;
using ServerControlWR;

public partial class ektron : BasePage
{
	protected override void OnLoad(EventArgs e)
	{
		literalBefore.Text = string.Format("<p>Async Start: {0}</p>", DateTime.Now.Millisecond.ToString());

		base.OnLoad(e);
		ServerControlWS ws = new ServerControlWS();
		ws.ContentBlockCompleted += ws_ContentBlockCompleted;
		ws.ContentBlockAsync(80933, 1033);
	}

	void ws_ContentBlockCompleted(object sender, ContentBlockCompletedEventArgs e)
	{
		literal.Text = e.Result;
		literalAfter.Text = string.Format("<p>Async Complete: {0}</p>", DateTime.Now.Millisecond.ToString());
	}
}