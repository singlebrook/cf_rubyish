<cfscript>

/* Boot up cf_rubyish.  Include me from your `Application.cfc`
`onRequestStart` - Jared 2013-03-14 */

/* `request.nil()` returns an instance of `nil` - Jared 2013-03-14 */
component function nil() {
	return CreateObject('component', 'nil');
}
request.nil = nil;
StructDelete(variables, 'nil');


/* `request.null()` is the same as `nil.null()`.  Please see
documentation there. - Jared 2013-03-14 */
void function null(){}
request.null = null;
StructDelete(variables, 'null');

</cfscript>
