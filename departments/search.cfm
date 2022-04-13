<cfscript>
  validate = csrfVerifyToken(key = "items", token = form.token);
  // writeDump(form);

  myToken = encodeForHTML(form.token);
  writeOutput(myToken);

  if(!validate) {
    location("index.cfm", false);
  }

  search = "";

  if(isDefined("form.searchTerm")) {
    search = form.searchTerm;
  } else {
    search = "empty";
  }

  writeOutput(search);

  writeDump(session);
</cfscript>

<cfif search EQ "hello">
  <p>Hello there....</p>
<cfelse>
  <p>No search term found</p>
</cfif>