/* http://www.ruby-doc.org/core-1.9.3/Hash.html */

component {
	public component function init(required struct st
			, defaultValue = JavaCast('null','')) {

		this.st = arguments.st;
		this.defaultValue = arguments.defaultValue;

		return this;
	}

	public function get(required string k) {
		return this.has_key(arguments.k) ? this.st[arguments.k] : this.defaultValue;
	}

	public boolean function has_key(required string k) {
		return StructKeyExists(this.st, arguments.k);
	}

	public void function store(required string k, required v) {
		this.st[arguments.k] = arguments.v;
	}

	public struct function to_hash() {
		return this.st;
	}
}
