<cfscript>
  cfparam(name="attributes.currentPage", default="", type="string");
  cfparam(name="REQUEST.boatMenus", default="{}", type="struct");
  cfparam(name="REQUEST.boatMenus.page", default="[]", type="array");

  if(REQUEST.boatMenus.page.len() == 0) {
    exit "exittag";
  }

  boolean function findIfAncestor(array children, string currentPage) {
    for(var childPair in children) {
      if(childPair[1].title == currentPage) {
        return true;
      }

      if(findIfAncestor(childPair[2], currentPage)) {
        return true;
      }
    }

    return true;
  }

  boolean function findIfParent(array children, string currentPage) {
    return children.find(function(childPair) {
      return childPair[1].title == currentPage;
    });
  }

  struct function getMenuItemState(struct item, array children, numeric depth = 0) {
    var hasChildren = children.len() > 0;
    var isCurrent = item.title == attributes.currentPage;
    var isAncestor = findIfAncestor(children, attributes.currentPage);
    var isParent = findIfParent(children, attributes.currentPage);

    return {
      hasChildren: hasChildren,
      isCurrent: isCurrent,
      isAncestor: isAncestor,
      isParent: isParent,
      depth: depth
    };
  }

  string function getClassName(struct state) {
    var className = "menu-item menu-item--depth-#state.depth#"
      & (state.hasChildren ? (" " & "menu-item-has-children") : "")
      & (state.isCurrent ? (" " & "current-menu-item") : "")
      & (state.isAncestor ? (" " & "current-menu-ancestor") : "");

    return 'class="#className#"';
  }

  string function getDataAttributes(struct state) {
    return "" & 'data-depth="#state.depth#"' & (state.isAncestor ? (" " & 'data-current-menu-ancestor="1"') : "");
  }

  string function getLinkClassName(struct state) {
    var className = "" & (state.hasChildren ? (" " & "sidebar__nav-item-parent-link") : "") & (state.isAncestor ? (" " & "sidebar__nav--menu-open") : "");

    return 'class="#className#"';
  }

  string function getLinkDataAttributes(struct state) {
    return "" & (state.hasChildren ? (" " & 'data-sidebar-menu="menu-toggle-parent"') : "");
  }
</cfscript>

<cfoutput>
  <ul class="sidebar__nav-items" data-js="sidebar__nav">
    <cfloop array="#REQUEST.boatMenus.page#" index="pair">
      <cfset item = pair[1] />
      <cfset children = pair[2] />
      <cfset state = getMenuItemState(item, children, 0) />
      <li #getClassName(state)# #getDataAttributes(state)#>
        <a #getLinkClassName(state)# #getLinkDataAttributes(state)#  href="#item.href#">#item.title#</a>
        <cfif children.len() GT 0>
          <ul class="sub-menu #state.isAncestor ? 'active' : ''#">
            <cfloop array="#children#" index="pair">
            <cfset item = pair[1] />
            <cfset children = pair[2] />
            <cfset state = getMenuItemState(item, children, 1) />
              <li #getClassName(state)# #getDataAttributes(state)#>
                <a href="#item.href#">#item.title#</a>
                <cfif children.len() GT 0>
                  <ul class="sub-menu">
                    <cfloop array="#children#" index="pair">
                      <cfset item = pair[1] />
                      <cfset state = getMenuItemState(item, [], 2) />
                      <li #getClassName(state)# #getDataAttributes(state)#>
                        <a href="#item.href#">#item.title#</a>
                      </li>
                    </cfloop>
                  </ul>
                </cfif>
              </li>
            </cfloop>
          </ul>
        </cfif>
      </li>
    </cfloop>
  </ul>
</cfoutput>

<cfscript>
  exit "exittag";
</cfscript>