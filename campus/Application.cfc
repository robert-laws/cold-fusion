component
{
  this.name = "subsite";

  variables.dbPath = expandPath("../resources/database/Derby/");
	this.datasource = "campusdb";
	this.datasources = {
		campusdb = {
			url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300",
			driver = "Apache Derby Embedded"
		}
	}

  this.customtagpaths = expandPath('./custom');
  
  this.clientManagement = true;
	this.setClientCookie = true;
	
  this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0, 0, 30, 0);
	
  this.applicationTimeout = createTimeSpan(0, 0, 30, 0);

  public boolean function onApplicationStart() {
    APPLICATION.baseUrl = "http://127.0.0.1:2020/subsite";
    return true;
  }
}