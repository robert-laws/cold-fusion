<cfscript>
  if(!thisTag.hasEndTag) {
    throw(message = "Missing end tag for boat_head");
  }

  if(thisTag.executionMode == "start") {
    writeDump(request.myImportantData);
    exit;
  }

  // if(!isDefined(application.boatSidebarDataLastUpdate) || isDefined(URL.boatForceRefresh) || application.boatSidebarDataLastUpdate < dateAdd('m', -5, now())) {

  // }
</cfscript>