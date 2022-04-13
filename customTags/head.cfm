<cfscript>
  cfparam(name="attributes.pageTitle", default="Campus Website");

  if(!thisTag.hasEndTag) {
    throw(message = "Missing end tag for base-template");
  }

  if(thisTag.executionMode == "start") {
    exit "exittemplate";
  }
</cfscript>

<cfoutput>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="robots" content="noodp,noydir" />
  <title>#attributes.pageTitle#</title>
  <link rel="stylesheet" href="./styles/resets.css" />
  <link rel="stylesheet" href="./styles/shared.css" />
  <link rel="stylesheet" href="./styles/main.css" />
</cfoutput>