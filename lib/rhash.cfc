/* http://www.ruby-doc.org/core-1.9.3/Hash.html */

component {

public component function new(required struct st
    , defaultValue) {

  this.st = arguments.st;
  if( StructKeyExists(arguments, 'defaultValue') ){
    this.defaultValue = arguments.defaultValue;
  }

  return this;
}

public function get(required string k) {
  return this.has_key(arguments.k) ? this.st[arguments.k] : this.getDefaultValue();
}

public function getDefaultValue() {
  /* Because a key in a struct set to a Java Null doesn't "really exist" */
  return StructKeyExists(this, 'defaultValue') ? this.defaultValue : JavaCast('null','');
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
