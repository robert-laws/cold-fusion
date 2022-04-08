<cfscript>
  REQUEST.websiteTitle = "Campus Website";
</cfscript>


<!DOCTYPE html>
<html lang="en">
  <cfinclude template="./includes/head.cfm">
<body>
  <cfinclude template="./includes/top-navbar.cfm">
  <cfinclude template="./includes/global-navbar.cfm">
  <div class="l-site-wrapper">
    <main id="maincontent">
      <cfinclude template="./includes/hero.cfm">
      <cfinclude template="./includes/sidebar.cfm">
      <cfinclude template="./includes/content.cfm">
    </main>
  </div>
  <cfinclude template="./includes/footer.cfm">
</body>
</html>

