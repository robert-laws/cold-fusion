<cfscript>
  // cfparam(name="attributes.greeting", default="Howdy!");
  if(thisTag.executionMode == "start") {
    writeOutput(attributes.greeting ?: "Welcome...");
    exit "exittemplate";
  }

  if(thisTag.executionMode == "end") {
    writeOutput("goodbye");
    exit "exittag";
  }
</cfscript>
