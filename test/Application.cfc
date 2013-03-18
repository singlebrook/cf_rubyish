<cfcomponent>

<cfinclude template="../test_helper.cfm">

<cffunction name="OnRequestStart" access="public" returntype="boolean">
  <cfset request.newObj = this.newObj>
  <cfreturn true>
</cffunction>

</cfcomponent>
