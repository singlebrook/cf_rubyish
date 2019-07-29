<cfscript>

/* Boot up cf_rubyish.  Include me from your `Application.cfc`
`onRequestStart` - Jared 2013-03-14 */

/* `request.nil()` returns an instance of `nil` - Jared 2013-03-14 */
component function rubyish_nil() {
  return CreateObject('component', 'lib.rnil');
}
request.nil = rubyish_nil;
StructDelete(variables, 'rubyish_nil');


/* `request.null()` is the same as `nil.null()`.  Please see
documentation there. - Jared 2013-03-14 */
void function rubyish_null(){}
request.null = rubyish_null;
StructDelete(variables, 'rubyish_null');

</cfscript>
