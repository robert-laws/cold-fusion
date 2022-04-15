component
{
  this.name = "examApp";

  this.sessionManagement = true;

  this.applicationTimeout = createTimespan(0, 0, 30, 0); // 30 minutes

  this.customtagpaths = expandPath('./examCustomTags');

  this.directory = getDirectoryFromPath( getCurrentTemplatePath() );

  variables.dbPath = expandPath("/resources/database/Derby/");
  this.datasource = "campusdb";
  this.datasources = {
    campusdb = {
			url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300",
			driver = "Apache Derby Embedded"
		}
  }
}