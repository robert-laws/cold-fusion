<cfscript>
  cfparam(name="request.boatMenus", type="struct", default={});
  cfparam(name="attributes.menu", type="string", default="page");

  if(!thisTag.hasEndTag) {
    throw(message = "Missing end tag for boat_nav");
  }

  if(thisTag.executionMode == "start") {
    thisTag.children = [];
    exit "exittemplate";
  }

  if(thisTag.executionMode == 'end') {
    request.boatMenus[attributes.menu] = thisTag.children;
    exit "exittag";
  }
</cfscript>