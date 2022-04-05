<cfparam name="attributes.pageTitle" default="Page Title" />
<cfparam name="attributes.accent" default="#APPLICATION.boatSiteAccent ?: 'grey-dark'#" />

<!--- <cfif NOT thisTag.hasEndTag>
    <cfthrow message="Missing end tag for boat_template_sidebar" />
</cfif> --->

<cfoutput>
    "#attributes.accent#"
</cfoutput>