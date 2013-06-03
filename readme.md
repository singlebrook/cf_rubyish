cf_rubyish
==========

ColdFusion has a limited API compared to ruby.  Let's implement the
ruby API in ColdFusion!

Challenges
----------

1. CF makes no distinction between class methods and instance
methods.  Ruby does.  For example, ruby `Net::HTTP` has `.get` and
`#get`.  We can fake this in CF:

    foo_class = CreateObject('component', 'foo');
    foo_instance = foo_class.new();

2. Before CF10, there was no support for anonymous functions, which
are a must in ruby.  So, we can only support CF 10+.
