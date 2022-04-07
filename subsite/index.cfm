<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Subsite Page</title>
</head>
<body>
  <h1>Subsite Page</h1>
  <!--- <cfscript>
    sql = "SELECT * FROM tUsers";
    params = {};
    users = queryExecute(sql, params, {datasource = "robertdb"});

    writeDump(users);
  </cfscript> --->

  <cfscript>
    myQuery = new Query(name = "queryUsers", datasource = "robertdb", sql = "SELECT LastName FROM tUsers WHERE FirstName LIKE :fn");
    myQuery.addParam(name = "fn", value = "J%", cfsqltype = "cf_sql_varchar");
    results = myQuery.execute().getResult();
    writeDump(results);
  </cfscript>

   <!--- <cfquery name="allUsers">
    SELECT UserID, firstName
    FROM tUsers
    ORDER BY firstName
  </cfquery>

  <cfoutput query="allUsers">
    <p>#UserID# - #FirstName#</p>
  </cfoutput> --->

  <cfoutput query="results">
    <cfif results.RecordCount GT 0>
      <p>#LastName#</p>
    <cfelse>
      <p>No results found</p>
    </cfif>
  </cfoutput>

  <hr>

  <cfoutput>
    <cfset FirstName = "Ross" />
    <cfquery datasource="robertdb" name="userResults">
      SELECT UserID, Email, FirstName, LastName 
      FROM tUsers
      WHERE FirstName = <cfqueryparam value = "#FirstName#" cfsqltype = "cf_sql_varchar"> 
    </cfquery>

    <cfif userResults.recordCount EQ 0>
        <p>No users.</p>
      <cfelse>
        <h2>Users List</h2>
        <ul>
          <cfloop query="userResults">
            <li data-id="#encodeForHtmlAttribute(userResults.UserID)#">
              <span class="barcode">#encodeForHtml(userResults.Email)#</span>
            </li>
          </cfloop>
        </ul>
      </cfif>
  </cfoutput>
</body>
</html>