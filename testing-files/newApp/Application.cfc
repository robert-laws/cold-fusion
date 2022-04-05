component
{
  this.name = "NewApplication";
	this.applicationTimeout = createTimeSpan(0,2,0,0); //2h
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,2,0); //45 min

  this.customtagpaths = expandPath('../myCustomTags');

	public void function onSessionStart() 
	{ 
		// set some defaults whenever a new user logs on.
		session.created 	= Now(); 
		session.userName 	= "bcobb";
	} 
}