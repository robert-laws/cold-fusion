<cfscript>
  cfparam(name = "attributes.pattern", type="string", default="pattern-a");

  patternTemplate = "";
  switch(attributes.pattern) {
    case "pattern-a":
      patternTemplate = "./patterns/pattern-a.svg";
      break;
    case "pattern-b":
      patternTemplate = "./patterns/pattern-b.svg";
      break;
    case "pattern-c":
      patternTemplate = "./patterns/pattern-c.svg";
      break;
    case "pattern-d":
      patternTemplate = "./patterns/pattern-d.svg";
      break;
    case "pattern-e":
      patternTemplate = "./patterns/pattern-e.svg";
      break;
    case "pattern-f":
      patternTemplate = "./patterns/pattern-f.svg";
      break;
    default:
      throw(message = "No pattern file matched '#attributes.pattern#'");
      break;
  }
</cfscript>

<cfoutput>
  <cfinclude template = "#patternTemplate#" />
</cfoutput>

<cfscript>
  exit "exitTag";
</cfscript>