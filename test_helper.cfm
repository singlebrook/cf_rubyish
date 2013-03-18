<cfscript>

function newObj(required string path) {
	return CreateObject('component', arguments.path);
}

</cfscript>
