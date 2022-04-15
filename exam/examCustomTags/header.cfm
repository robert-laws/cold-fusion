<cfscript>
  myTime = now();

  if(!thisTag.hasEndTag) {
    throw(message = "Missing end tag for base-template");
  }

  if(thisTag.executionMode == "start") {
    exit "exittemplate";
  }
</cfscript>

<cfoutput>  
  <h4>#myTime#</h4>
</cfoutput>