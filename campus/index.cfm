<cfscript>
  REQUEST.websiteTitle = "Campus Website";
</cfscript>

<cf_base_template_top pageTitle="#REQUEST.websiteTitle#" />
  <cfinclude template="./includes/content.cfm">
<cf_base_template_bottom />
