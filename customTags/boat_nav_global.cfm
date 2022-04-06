<cfscript>
  menu_items = APPLICATION.boatSidebarData.off_canvas_items.menu_items ?: [];
</cfscript>

<cfoutput>
  <nav class="global-nav" aria-labelledby="global-nav">
    <h2 id="global-nav" class="u-visual-hide">Global Navigation</h2>
    <ul class="global-nav__list" data-js="global-nav">
      <cfloop array="#menu_items#" index="item">
        <li class="#encodeForHtmlAttribute(item.classes)#">
          <a
              href="#item.url.startsWith('/') ? 'https://wp.stolaf.edu' & item.url : item.url#"
              class="#encodeForHtmlAttribute(item.class)#"
              id="#encodeForHTMLAttribute(item.id)#"
              data-target="#encodeForHTMLAttribute(item['data-target'])#"
              data-id="#encodeForHTMLAttribute(item['data-id'])#"
              data-js="#encodeForHTMLAttribute(item['data-js'])#"
          >
            <span class="menu-item__text">#item.label#</span>
          </a>
        </li>
      </cfloop>
    </ul>
  </nav>
</cfoutput>

<cfscript>
  exit "exittag";
</cfscript>