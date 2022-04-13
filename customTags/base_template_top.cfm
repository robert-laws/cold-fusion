<cfscript>
  // request.siteLocation = "Central Zone";
  // request.myName = "Bob Cobb";
  cfparam(name="attributes.pageTitle", default="Campus Website");

  if(!thisTag.hasEndTag) {
    throw(message = "Missing end tag for base-template");
  }

  if(thisTag.executionMode == "start") {
    exit "exittemplate";
  }
</cfscript>

<cfoutput>
  <!DOCTYPE html>
  <html lang="en">
    <cf_head pageTitle="#attributes.pageTitle#" />
  <body>
    <cfinclude template="../includes/top-navbar.cfm">
    <cfinclude template="../includes/global-navbar.cfm">
    <div class="l-site-wrapper">
      <main id="maincontent">
        <cfinclude template="../includes/hero.cfm">
        <cfinclude template="../includes/sidebar.cfm">
</cfoutput>