<%@ Application Language="C#" %>

<script RunAt="server">

	private class HttpContextDataStore : MyLeagues.Dao.ServiceLayer.IUnitOfWorkDataStore
	{
		public object this[string key]
		{
			get { return HttpContext.Current.Items[key]; }
			set { HttpContext.Current.Items[key] = value; }
		}
	}

	void Application_Start(object sender, EventArgs e)
	{
		// Code that runs on application startup
		// Code that runs on application startup
		MyLeagues.Dao.ServiceLayer.UnitOfWorkHelper.CurrentDataStore = new HttpContextDataStore();
	}

	void Application_End(object sender, EventArgs e)
	{
		//  Code that runs on application shutdown
	}

	void Application_Error(object sender, EventArgs e)
	{
		// Code that runs when an unhandled error occurs
	}

	void Session_Start(object sender, EventArgs e)
	{
		// Code that runs when a new session is started
	}

	void Session_End(object sender, EventArgs e)
	{
		// Code that runs when a session ends. 
		// Note: The Session_End event is raised only when the sessionstate mode
		// is set to InProc in the Web.config file. If session mode is set to StateServer 
		// or SQLServer, the event is not raised.
	}
       
</script>
