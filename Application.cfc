component
{
	// local development setup
	// database connection
	variables.dbPath = expandPath("/resources/database/Derby/");
	this.datasource = "campusdb";
	this.datasources = {
		campusdb = {
			url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300",
			driver = "Apache Derby Embedded"
		}
	}

	this.customtagpaths = expandPath('./customTags');

	setting enablecfoutputonly = false;

	this.name = "campusApp";
	this.clientManagement = true;
	this.sessionManagement = true;
	this.setClientCookie = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);
	this.applicationTimeout = createTimeSpan(0, 0, 30, 0);

	public boolean function onApplicationStart() {
		application.debugging = true;
		application.baseUrl = "https://www.stolaf.edu/apps/robertapp/";
		application.campusdb = "campusdb";
		application.boatSiteTitle = "CF App - Local Config";
		APPLICATION.boatContactAddress = "RML 474";
    APPLICATION.boatContactPhone = "(507) 786-3745";
    APPLICATION.boatContactEmail = "laws@stolaf.edu";
    APPLICATION.boatContactHours = "8am - 5pm";
    APPLICATION.boatSitePattern = "pattern-c";
    APPLICATION.boatSiteAccent = "navy";

		return true;
	}

	public void function onSessionStart() {
		session.created = now();
		session.isLoggedIn = false;
	}

	public void function onRequest(required string targetPage) {
		if ( !DirectoryExists( variables.dbPath ) ) 
		{
      include "/resources/database/buildDB.cfm";
		}
		
		include arguments.targetPage;
	}
}