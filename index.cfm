<cfinclude template="includes/header.cfm">

<cf_boat_template_sidebar pageTitle = "ColdFusion App">
  <cf_currentpage title="Testing App" />

  <h1>Home Page</h1>

  <cfscript>
    // location = null;
    // writeOutput(isNull(location));
    name = "Bob Cobb";
    age = 34;
    isValid = true;
    items = ["pen", "pencil", "paper"];

    // writeOutput(variables.name);

    variables.firstName = "Bob";
    variables.lastName = "Cobb";

    string function greet() {
      var greeting = "Howdy";
      var firstName = "Kalvin";

      return "#greeting#, #local.firstName# #variables.lastName#";
    }
  </cfscript>

  <a href="user.cfm">User Page</a>
  <cfinclude template="copyright.cfm" />

  <cfquery name="users" result="usersResult">
    SELECT * FROM users
  </cfquery>

  <cfoutput>
    <cfdump var="#usersResult#" />
  </cfoutput>

  <hr>

  <cfoutput>
    #valueList(users.LastName, " - ")#.
  </cfoutput>

  <hr>
  <cfoutput>
    <cfloop query="users">
      <p>#FirstName#</p>
    </cfloop>
    <!--- <cfdump var="#users#" /> --->
    <!--- <cfdump var="#variables#" /> --->
    <!--- <p>#greet()#</p>
    <!--- <cfdump var="#application#" /> --->
    <cfdump var="#session#" />
    <cfcookie name="group" value="greenGroup" />
    <cfdump var="#cookie#" label="Cookie Scope" /> --->
  </cfoutput>

  <!--- <cfoutput query="users">
    <p>#LastName#</p>
  </cfoutput> --->

  <cfoutput query="users">
    <p><a href="user-details/#FirstName#">#FirstName# #LastName#</a></p>
  </cfoutput>

<!---   <cfdump var="#REQUEST.boatsidebardatalastupdate#"> --->

</cf_boat_template_sidebar>
<cfinclude template="includes/footer.cfm">