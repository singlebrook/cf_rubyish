component extends="mxunit.framework.TestCase" {

public void function beforeTests() {
  rset = request.newObj('rset').new();
}

public void function add_if_unique () {
  assert(IsArray(rset.to_a()));
  assert(ArrayLen(rset.to_a()) EQ 0);
  rset.add('a');
  assert(ArrayLen(rset.to_a()) EQ 1);
  rset.add('a');
  assert(ArrayLen(rset.to_a()) EQ 1);
  rset.add('b');
  assert(ArrayLen(rset.to_a()) EQ 2);
}

}
