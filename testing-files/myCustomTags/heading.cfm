<cfscript>
  receivedName = attributes.myName;

  string function showName(name) {
    if(name == "") {
      return  "No name was passed in..."
    } else {
      return  "The name is #name#"
    }
  }  
</cfscript>

<cfoutput>
  <h4>#showName(attributes.myName)#</h4>
</cfoutput>