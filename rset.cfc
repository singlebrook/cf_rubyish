/* http://ruby-doc.org/stdlib-1.9.3/libdoc/set/rdoc/Set.html */

component {

public component function new() {
  this._ary = [];
  return this;
}

public component function add(required x) {
  if (NOT ArrayFind(this._ary, arguments.x)) {
    ArrayAppend(this._ary, arguments.x);
  }
  return this;
}

public array function to_a() {
  return this._ary;
}

}
