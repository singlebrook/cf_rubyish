/* http://ruby-doc.org/core-1.9.3/NilClass.html */

/* NilClass is a singleton. */

component {

  /* `null` is not a ruby method. It returns Java's null, which can
  be useful in ColdFusion, eg. using ternary expressions to pass
  optional arguments. In CF, a void function returns a Java null.
  This is the same as returning JavaCast('null', ''). See
  http://bit.ly/d3M4M - Jared 2013-03-14 */
  public void function null(){}
}
