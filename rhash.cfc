/* http://www.ruby-doc.org/core-1.9.3/Hash.html */

component {
	public component function init(required struct st) {
		this.st = arguments.st;
		return this;
	}

	public function get(required string k) {
		return this.st[arguments.k];
	}

	public boolean function has_key(required string k) {
		return StructKeyExists(this.st, arguments.k);
	}

	public struct function to_hash() {
		return this.st;
	}
}
