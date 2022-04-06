<cfscript>
  currentPage = attributes.currentPage ?: REQUEST.currentPage ?: "";
  siteTitle = attributes.siteTitle ?: REQUEST.boatSidebarTitle ?: APPLICATION.boatSiteTitle ?: "";
  address = attributes.address ?: REQUEST.boatSidebarAddress ?: APPLICATION.boatContactAddress ?: decodeForHtml("1500 St. Olaf Avenue&lt;br&gt;Northfield, MN 55057");
  phone = attributes.phone ?: REQUEST.boatSidebarPhone ?: APPLICATION.boatContactPhone ?: "507-786-2222";
  fax = attributes.fax ?: REQUEST.boatSidebarFax ?: APPLICATION.boatContactFax ?: "";
  email = attributes.email ?: REQUEST.boatSidebarEmail ?: APPLICATION.boatContactEmail ?: "webmaster@stolaf.edu";
  hours = attributes.hours ?: REQUEST.boatSidebarHours ?: APPLICATION.boatContactHours ?: "";
</cfscript>

<cfoutput>
  <aside class="sidebar" role="complementary" data-js="sidebar-wrapper">
    <h3 class="sidebar__title sidebar__nav-label">#siteTitle#</h3>
    <button class="btn sidebar-smallscreen-toggle" data-js="sidebar-section-toggle">#siteTitle#</button>
    <div class="sidebar-section sidebar__top" data-js="sidebar-section">
      <div class="sidebar__content">
        <nav class="sidebar__nav sidebar__widget">
          <cf_boat_sidebar_menu currentPage="#currentPage#" />
        </nav>
      </div>
    </div>
    <cfif address.len() || email.len() || fax.len() || hours.len() || phone.len()>
      <button class="btn sidebar-smallscreen-toggle" data-js="sidebar-section-toggle">Contact</button>
      <div class="sidebar-section sidebar__bottom" data-js="sidebar-section">
        <div class="sidebar__content">
          <cfif address.len() || email.len() || fax.len() || phone.len()>
            <div class="sidebar__contact">
              <h3 class="sidebar__title sidebar__contact-title">Contact</h3>
              <cfif address.len()>
                <div class="sidebar__contact-address">
                  <p>#address#</p>
                </div>
              </cfif>
              <cfif phone.len() || fax.len() || email.len()>
                <p class="sidebar__contact-connect">
                  <cfif phone.len()>
                    <strong>P</strong> <a href="tel:#phone#" class="sidebar__contact-anchor">#phone#</a>
                    <br>
                  </cfif>
                  <cfif fax.len()>
                    <strong>F</strong> <a href="tel:#fax#" class="sidebar__contact-anchor">#fax#</a>
                    <br>
                  </cfif>
                  <cfif email.len()>
                    <strong>E</strong> <a href="mailto:#email#" class="sidebar__contact-anchor">#email#</a>
                  </cfif>
                </p>
              </cfif>
            </div>
          </cfif>
          <cfif hours.len()>
            <div class="sidebar__widget sidebar__office-hours">
              <h3 class="sidebar__office-hours-title">Office Hours</h3>
              <p>#hours#</p>
            </div>
          </cfif>
        </div>
      </div>
    </cfif>
  </aside>
</cfoutput>

<cfscript>
  exit "exittag";
</cfscript>