<!--- <cf_base_template_top pageTitle="#REQUEST.currentPageTitle#" /> --->
<cf_base_template_top pageTitle="Page" />
  <!--- <cfinclude template="./includes/content.cfm"> --->

  <div class="l-wrapper">
    <div class="site-grid site-grid__wrapper site-grid__layout site-grid__layout--sidebar-horizontal">
      <div class="site-grid__col">

        <div class="page-content t-content">
          <!--- Page content --->
          <cfinclude template="./includes/content-page.cfm">
        </div>
      </div>
    </div>
  </div>

<cf_base_template_bottom />