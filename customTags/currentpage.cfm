<cfscript>
  cfparam(name="attributes.title", type="string");
  cfparam(name="attributes.parent", type="string", default="");
  cfparam(name="REQUEST.currentPage", type="string", default="");
  cfparam(name="REQUEST.parentPage", type="string", default="");

  REQUEST.currentPage = attributes.title;
  REQUEST.parentPage = attributes.parent;

  exit "exittag";
</cfscript>