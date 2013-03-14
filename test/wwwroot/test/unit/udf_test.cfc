component extends="mxunit.framework.TestCase" {

public void function beforeTests() {
	include "../../../../rubyish.cfm";
}

public void function null_returns_null() {
	assert(IsNull(request.null()));
}

public void function nil_returns_instance_of_nil() {
	var n = request.nil();
	assert(IsObject(n));
}

}
