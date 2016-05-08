#!/usr/bin/env perl6

use v6;
use lib 'lib';
use Clean;

class Foo does Cleanable {
  method clean {
    say "clean called!";
  }
}

clean Foo.new, -> $o { say $o.perl if $o.defined; }
