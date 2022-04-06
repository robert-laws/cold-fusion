<cfscript>
  cfparam(name = "REQUEST.boatSidebarDataLastUpdate", type="date", default="#now()#");
  
  if(!thisTag.hasEndTag) {
    throw(message = "Missing end tag for boat_head");
  }
  
  if(thisTag.executionMode == "start") {
    exit "exittemplate";
  }

  if(!isDefined('APPLICATION.boatSidebarDataLastUpdate') || isDefined('URL.boatForceRefresh') || APPLICATION.boatSidebarDataLastUpdate < now().add('m', -5)) {
    cfhttp(url="https://wp.stolaf.edu/wp-json/site-data/sidebar/", timeout="5", result="sidebardata");
    APPLICATION.boatSidebarDataSerialized = sidebardata.filecontent;
    APPLICATION.boatSidebarData = deserializeJson(sidebardata.filecontent);
    APPLICATION.boatSidebarDataLastUpdate = now();
  }
  
  ver = APPLICATION.boatSidebarData.build_version ?: 'v1.0.0-spring.8';
  REQUEST.boatSidebarDataLastUpdate = now();
</cfscript>

<cfoutput>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="robots" content="noodp,noydir" />

  <link rel="Shortcut Icon" href="https://wp.stolaf.edu/favicon.ico" type="image/x-icon" />
  <link rel="icon" sizes="192x192" href="https://wp.stolaf.edu/wp-content/themes/core/img/branding/android.png">
  <link rel="apple-touch-icon-precomposed" href="https://wp.stolaf.edu/wp-content/themes/core/img/branding/ios.png">
  <meta name="msapplication-TileImage" content="https://wp.stolaf.edu/wp-content/themes/core/img/branding/ms.png">
  <meta name="msapplication-TileColor" content="##000000">
  <meta name="theme-color" content="##e4a01b">

  <link rel="stylesheet" href="https://wp.stolaf.edu/wp-content/plugins/core/assets/theme/css/dist/master.min.css?ver=#ver#" />
  <link rel="stylesheet" href="https://wp.stolaf.edu/wp-content/plugins/core/assets/theme/css/dist/print.min.css?ver=#ver#" media="print" />

  <script charset="utf-8" src="https://wp.stolaf.edu/wp-content/plugins/core/assets/theme/js/dist/manifest.min.js?ver=#ver#"></script>
  <script charset="utf-8" src="https://wp.stolaf.edu/wp-content/plugins/core/assets/theme/js/vendor/jquery.min.js?ver=#ver#"></script>
  <script charset="utf-8" src="https://wp.stolaf.edu/wp-content/plugins/core/assets/theme/js/dist/vendor.min.js?ver=#ver#"></script>
  <script charset="utf-8" defer src="https://wp.stolaf.edu/wp-content/plugins/core/assets/theme/js/dist/scripts.min.js?ver=#ver#"></script>

  #thisTag.generatedContent#
  <cfset thisTag.generatedContent = "" />
</cfoutput>