<cfscript>
  session.isLoggedIn = true;
</cfscript>

<cfoutput>
  <cfdump var="#session#" label="Session">
</cfoutput>