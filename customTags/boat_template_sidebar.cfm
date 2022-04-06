<cfscript>
  mode = attributes.mode ?: thisTag.executionMode;

  cfparam(name="attributes.pageTitle", default="Page Title");
  cfparam(name="attributes.pattern", default="#APPLICATION.boatSitePattern ?: 'pattern-a'#");
  cfparam(name="attributes.accent", default="#APPLICATION.boatSiteAccent ?: 'grey-dark'#");

  if(!thisTag.hasEndTag) {
    throw(message = "Missing end tag for boat_template_sidebar");
  }
</cfscript>

<cfoutput>
  <cfif mode == "start">
    <cf_boat_panel_title pageTitle="#attributes.pageTitle#" pattenrn="#attributes.pattern#" accent="#attributes.accent#" />
    <div class="l-wrapper">
      <div class="site-grid">
        <div class="site-grid__wrapper">
          <div class="site-grid__layout site-grid__layout--sidebar-right-wide-gutter">
            <div class="site-grid__col">
              <cf_boat_breadcrumbs />
              <div class="page-content t-content">
  </cfif>

  <cfif mode == "end">
                </div> <!-- /.page-content -->
              </div> <!-- /.site-grid__col -->

            <div class="site-grid__col">
              <cf_boat_sidebar />
            </div> <!-- /.site-grid__col -->
          </div> <!-- /.site-grid__layout -->
        </div> <!-- /.site-grid__wrapper -->
      </div> <!-- /.site-grid -->
    </div> <!-- /.l-wrapper -->
  </cfif>
</cfoutput>