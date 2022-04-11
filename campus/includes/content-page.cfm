<cfscript>
  if(structKeyExists(url, "name")) {
    include "./contact.cfm";
  } else {
    include "./copyright.cfm";
  }

  campusUser = new com.User("Hal");
  writeOutput(campusUser.getUsername());
  
</cfscript>

<!--- <cfoutput>
  <div class="l-wrapper">
    <div class="site-grid site-grid__wrapper site-grid__layout site-grid__layout--sidebar-horizontal">
      <div class="site-grid__col">
        <ul class="breadcrumbs">
          <!--- Breadcrumbs --->
          <cf_breadcrumbs />
        </ul>

        <div class="page-content t-content">
          <!--- Page content --->
        </div>
      </div>
    </div>
  </div>
        
</cfoutput> --->