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
    myQuery = new Query(name = "queryUsers", datasource = "campusdb", sql = "SELECT * FROM Users");
    // myQuery = new Query(name = "queryUsers", datasource = "campusdb", sql = "SELECT LastName FROM Users WHERE FirstName LIKE :fn");
    // myQuery.addParam(name = "fn", value = "K%", cfsqltype = "cf_sql_varchar");
    results = myQuery.execute().getResult();
    writeDump(results);

    arrayOfNames = valueArray(results, "LastName");
    writeDump(arrayOfNames);

    writeDump(serializeJSON(results));
    writeDump(serializeJSON(arrayOfNames));

    cfloop(query = results) {
      writeOutput("<p>-- #LastName#</p>");
    }
  </cfscript>

   <!--- <cfquery name="allUsers">
    SELECT UserID, firstName
    FROM tUsers
    ORDER BY firstName
  </cfquery>

  <cfoutput query="allUsers">
    <p>#UserID# - #FirstName#</p>
  </cfoutput> --->

  <cfoutput>
    <cfif arrayOfNames.len() GT 0>
      <cfloop array="#arrayOfNames#" item="lastName">
        <p>#lastName#</p>
      </cfloop>
    <cfelse>
      <p>No Results...</p>
    </cfif>
  </cfoutput>

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
    <cfquery datasource="campusdb" name="userResults">
      SELECT UserID, Email, FirstName, LastName 
      FROM Users
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

  <cfscript>
  // Data Types
  firstName = "Howard"; // string
  age = 34; // intergers
  employee = true; // boolean
  itemList = "pen, pencil, eraser"; // string (list)
  arrayOfItems = ["pen", "pencil", "eraser"]; // array
  structOfItems = {
    pen: "ball point",
    pencil: "mechanical",
    eraser: "rubber"
  }

  unorderedList = "<ul>";
  for (item in arrayOfItems) {
    unorderedList &= "<li>" & item & "</li>";
  }
  unorderedList &= "</ul>";
  </cfscript>

  <cfoutput>
    #unorderedList#
  </cfoutput>
</body>
</html>