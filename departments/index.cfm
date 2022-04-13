<h1>Home Page</h1>
<cf_welcome>
<img src="images/logos/logo.png" />

<cfoutput>
  <form name="searchForm" action="search.cfm" method="post">
    <input type="hidden" name="token" value="#csrfGenerateToken(key = "items", forceNew = true)#" />
    <input type="text" name="searchTerm" />
    <input type="submit" value="Search" />
  </form>
</cfoutput>

<!--- <cfset title = "manager"> --->

<cfscript>

people = "Bob, Ned, Sally, Joe,,,James";
writeOutput(listlen(people, ",", true));

writeOutput(listGetAt(people, 5, ",", false));

</cfscript>