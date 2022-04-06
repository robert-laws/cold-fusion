<cf_boat_nav menu="footer">
    <cf_boat_navitem title="Apply" href="https://wp.stolaf.edu/admissions/apply/" />
    <cf_boat_navitem title="Visit" href="https://wp.stolaf.edu/admissions/plan-a-visit/" />
    <cf_boat_navitem title="Give" href="https://wp.stolaf.edu/giving/give/" />
    <cf_boat_navitem title="Get Involved" href="https://wp.stolaf.edu/alumni/volunteer-opportunities/" />
</cf_boat_nav>

<cfoutput>
    <nav class="site-footer__nav" aria-labelledby="site-footer__nav-label" data-js="secondary-footer-nav">
        <div class="l-wrapper">
            <h2 id="site-footer__nav-label" class="u-visual-hide">Secondary Navigation</h2>

            <ul class="site-footer__nav-list">
                <i class="icon icon-shield site-footer__nav-icon-shield"></i>
                <cfloop array="#REQUEST.boatMenus.footer#" index="item">
                    <li>
                        <a href="#item[1].href#">#item[1].title#</a>
                    </li>
                </cfloop>
            </ul>
        </div>
    </nav>
</cfoutput>

<cfexit method="exittag" />