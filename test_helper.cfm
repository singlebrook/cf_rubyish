<cfscript>

function newObj(required string path) {
	return CreateObject('component', 'lib.' & arguments.path);
}

</cfscript>
