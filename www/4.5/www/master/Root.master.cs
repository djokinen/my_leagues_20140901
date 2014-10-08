using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class master_Root : BaseMasterPage
{
	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		// siteMapPath.ItemCreated += siteMapPath_ItemCreated;
		siteMapPath.ItemDataBound += siteMapPath_ItemDataBound;
	
	}

	//void siteMapPath_ItemCreated(object sender, SiteMapNodeItemEventArgs e)
	//{
	//	if (e.Item.SiteMapNode.Url != null)
	//	{
	//		e.Item.SiteMapNode.Url. = string.Format("{0}?{1}", e.Item.SiteMapNode.Url, Request.QueryString);
	//	}
	//}

	void siteMapPath_ItemDataBound(object sender, SiteMapNodeItemEventArgs e)
	{
		// SiteMap.Provider.CurrentNode.ReadOnly = false;
		
		if (e.Item.SiteMapNode != null)
		{
			// e.Item.SiteMapNode.ReadOnly = false;
			// e.Item.SiteMapNode.Url = string.Format("{0}?{1}", e.Item.SiteMapNode.Url, Request.QueryString);
		}
	}

	protected override void OnPreRender(EventArgs e)
	{
		base.OnPreRender(e);
		Page.Header.Title =
			string.Format("My Leagues{0}",
			string.IsNullOrWhiteSpace(Page.Title) ? string.Empty : " | " + Page.Title);


	}
}