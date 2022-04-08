<cfscript>
  if(!thisTag.hasEndTag) {
    throw(message = "Missing end tag for base-template");
  }

  if(thisTag.executionMode == "start") {
    exit "exittemplate";
  }
</cfscript>

<cfoutput>
        </main>
    </div>
    <cfinclude template="../includes/footer.cfm">
  </body>
  </html>
</cfoutput>