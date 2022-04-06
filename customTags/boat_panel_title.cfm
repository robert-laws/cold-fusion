<cfscript>
  cfparam(name = "attributes.pageTitle", default = "");
  cfparam(name = "attributes.pattern", default = "#APPLICATION.boatSitePattern ?: 'pattern-a'#");
  cfparam(name = "attributes.accent", default = "#APPLICATION.boatSiteAccent ?: 'grey-dark'#");

  colorPairings = {
    'grey-dark': 'blue-light',
    'grey-light': 'gold',
    'cranberry': 'white',
    'lime': 'purple',
    'orange': 'purple',
    'blue-light': 'purple',
    'blue': 'gold-light',
    'teal': 'lime',
    'purple': 'teal',
    'navy': 'teal',
    'mint': 'orange',
    'default': 'white'
  }

  if(!structKeyExists(colorPairings, attributes.accent)) {
    valid = colorPairings.keyList(", ");
    throw(message = "Accent color & #attributes.accent# & is not valid. Valid colors are & #valid#", type= "Application");
  }

  background = attributes.accent;
  foreground = colorPairings[attributes.accent];

  if(attributes.accent == "default") {
    background = "purple";
  }
</cfscript>

<cfoutput>
  <section class="standard-page-hero u-cc-#background#">
    <div class="hero__pattern u-fc-#foreground#">
      <cf_boat_pattern pattern="#attributes.pattern#" />
    </div>

    <div class="standard-page-hero__inner l-wrapper">
      <h1 class="page__title h1">#attributes.pageTitle#</h1>
    </div>
  </section>
</cfoutput>

<cfscript>
  exit "exittag";
</cfscript>