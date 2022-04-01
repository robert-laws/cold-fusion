component
{
  // Application Settings
  variables.dbPath = expandPath("/resources/database/Derby/");

	this.name = "CampusApp";
	this.applicationTimeout = createTimeSpan(0,2,0,0); //2h
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,45,0); //45 min

	this.customtagpaths = expandPath('./myCustomTags');

	this.datasource = "CFTrainingDSN";

	this.datasources = {
		CFTrainingDSN = {
			url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300", 
			driver = "Apache Derby Embedded"
		}
	};

  // On Application Start Method
  public boolean function onApplicationStart() 
	{ 
    return true; 
  }

  
  public void function onRequest( required string targetPage ) 
  { 
		if ( !DirectoryExists( variables.dbPath ) ) 
		{
      include "/resources/database/buildDB.cfm";
		}

    include arguments.targetPage;
  }

  // function onError(any Exception, string EventName) {
  //   writeOutput(Exception);
  //   writeOutput("<hr/>");
  //   writeOutput(EventName);
  // }

  public void function onSessionStart() 
	{ 
		// set some defaults whenever a new user logs on.
		session.created 	= Now(); 
		session.userName 	= "jjupe";
	} 
}