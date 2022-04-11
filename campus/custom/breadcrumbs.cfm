<cfscript>
  cfparam(name = "attributes.crumbs", default = "");

  if(!thisTag.hasEndTag) {
    throw(message = "Missing end tag for base-template");
  }

  if(thisTag.executionMode == "start") {
    exit "exittemplate";
  }

  string function getCrumbs(array crumbs) {
    if(crumbs.len() == 0) {
      return "";
    } else {
      var crumb = crumbs.shift();
      return crumbs.len() == 0 ? crumb : crumb & " / " & getCrumbs(crumbs);
    }
  }
</cfscript>

<cfoutput>
  <ul class="breadcrumbs">
    <!--- <li class="menu-item"></li> --->
    #getCrumbs(attributes.crumbs)#
  </ul>
</cfoutput>