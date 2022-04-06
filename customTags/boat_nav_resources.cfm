<cfscript>
  menu_items = APPLICATION.boatSidebarData.off_canvas_items.resources_nav.menu_items ?: [];
</cfscript>

<cfoutput>
  <ul class="resources-nav resources-nav--desktop">
    <li class="menu-item__label">
      <span class="menu-item__text">resources for</span>
    </li>

    <cfloop array="#menu_items#" index="item">
      <li class="#encodeForHTMLAttribute(item.classes)#">
        <a href="#item.url.startsWith('/') ? 'https://wp.stolaf.edu' & item.url : item.url#" class="#encodeForHTMLAttribute((item.class))#">
          <span class="menu-item__text">
            #item.label#
          </span>
        </a>
      </li>
    </cfloop>
</cfoutput>

<cfscript>
  exit "exittag";
</cfscript>