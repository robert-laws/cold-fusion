<cf_boat_nav menu="legal">
  <cf_boat_navitem title="Emergency Information" href="https://wp.stolaf.edu/emergency/" />
  <cf_boat_navitem title="Employment Opportunities" href="https://stolaf.hiretouch.com/" />
  <cf_boat_navitem title="Report a Website Issue" href="https://wp.stolaf.edu/site2017/reportissue/" />
</cf_boat_nav>

<cfoutput>
    <nav class="site-footer__nav-legal" aria-labelledby="site-footer__nav-legal-label">
        <div class="l-wrapper">
            <h2 id="site-footer__nav-legal-label" class="u-visual-hide">Legal Navigation</h2>

            <ul class="site-footer__nav-legal-list">
                <cfloop array="#REQUEST.boatMenus.legal#" index="item">
                    <li>
                        <a href="#item[1].href#">#item[1].title#</a>
                    </li>
                </cfloop>
            </ul>
        </div>
    </nav>
</cfoutput>

<cfexit method="exitTag" />