<nav class="top-nav" aria-labelledby="resourcesmenu" data-js="top-nav">
  <h2 id="resourcesmenu" class="u-visual-hide">Resources Menu</h2>

  <div class="logo" data-js="logo">
    <a href="https://wp.stolaf.edu/" rel="home">
      <span class="u-visual-hide">St. Olaf College</span>
    </a>
  </div>

<cfoutput>
  <cf_boat_nav_resources />
</cfoutput>

  <div class="top-nav__search">
    <i class="icon icon-search"></i>
    <label for="top-search" class="u-screen-reader-text">Search sitewide:</label>
    <input id="top-search" class="site__search-input" placeholder="search sitewide" data-js="site-search" />
  </div>

  <button
    class="menu-trigger menu-trigger--tools"
    aria-label="tools menu"
    aria-controls="tools-menu"
    aria-expanded="false"
    data-js="trigger-tools-menu"
    title="Expand Tools Menu"
  >
    <span class="menu-trigger__text">Tools</span>
    <span class="menu-trigger__icon">
      <i class="menu-trigger__bars"></i>
    </span>
  </button>

  <button
    class="menu-trigger menu-trigger--mobile"
    aria-label="navigation menu"
    aria-controls="mobile-menu"
    aria-expanded="false"
    data-js="trigger-mobile-menu"
    title="Expand Mobile Menu"
  >
    <span class="menu-trigger__icon">
      <i class="menu-trigger__bars"></i>
    </span>
    <span class="u-visual-hide">Expand Mobile Menu</span>
  </button>
</nav>

<cfscript>
  exit "exittag";
</cfscript>