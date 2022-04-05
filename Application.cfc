component
{
	// local development setup
	// database connection
	variables.dbPath = expandPath("/resources/database/Derby/");
	this.datasource = "robertdb";
	this.datasources = {
		robertdb = {
			url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300",
			driver = "Apache Derby Embedded"
		}
	}

	this.customtagpaths = expandPath('./customTags');

	setting enablecfoutputonly = false;

	this.name = "robertApp";
	this.clientManagement = true;
	this.sessionManagement = true;
	this.setClientCookie = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);
	this.applicationTimeout = createTimeSpan(0, 0, 30, 0);

	public boolean function onApplicationStart() {
		application.debugging = true;
		application.baseUrl = "https://www.stolaf.edu/apps/robertapp/";
		application.robertdb = "robertdb";
		application.boatSiteTitle = "Robert App - Local Config";

		return true;
	}

	public void function onRequest(required string targetPage) {
		if ( !DirectoryExists( variables.dbPath ) ) 
		{
      include "/resources/database/buildDB.cfm";
		}
		
		include arguments.targetPage;
	}
}