<cfscript>
  cfparam(name="attributes.title", type="string");
  cfparam(name="attributes.href", type="string", default="");

  if(!thisTag.hasEndTag) {
    throw(message = "Missing end tag for boat_navitem");
  }

  if(thisTag.executionMode == "start") {
    thisTag.children = [];
    exit "exittemplate";
  }

  if(thisTag.executionMode == "end") {
    tags = getBaseTagList().listToArray();
    myTag = tags[1];
    parentTag = tags[2];

    parent = getBaseTagData(parentTag, parentTag == myTag ? 2 : 1);

    if(parent.thisTag.executionMode == "inactive") {
      parent.thisTag.children.append([attributes, thisTag.children]);
    }
  }
</cfscript>