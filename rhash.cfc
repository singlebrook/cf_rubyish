/* http://www.ruby-doc.org/core-1.9.3/Hash.html */

component {
	public component init(required struct st) {
		this.st = arguments.st;
	}

	public boolean has_key(required string k) {
		return StructKeyExists(this.st, arguments.k);
	}

	public struct to_hash() {
		return this.st;
	}
}
