<cfscript>
  cfparam(name="REQUEST.noStructure", default="false", type="boolean");

  if(REQUEST.noStructure && thisTag.executionMode == "end") {
    writeOutput(thisTag.generatedContent);
    thisTag.generatedContent = "";
    exit "exittag";
  }

  if(thisTag.executionMode == "start") {
    exit "exittemplate";
  }
</cfscript>

<cfoutput>
    </main>
    <cf_boat_footer />
  </div>

  #thisTag.generatedContent#
  <cfset thisTag.generatedContent = "" />
</cfoutput>