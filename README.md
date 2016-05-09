# Clean

[![Build Status](https://travis-ci.org/azawawi/perl6-clean.svg?branch=master)](https://travis-ci.org/azawawi/perl6-clean) [![Build status](https://ci.appveyor.com/api/projects/status/github/azawawi/perl6-clean?svg=true)](https://ci.appveyor.com/project/azawawi/perl6-clean/branch/master)

Provides a routine `clean` that takes an object and an anonymous code block
which takes an object that does `Cleanable`. This basically ensures that your
objects can be cleaned after your code block has finished running. Thus it
provides an object-oriented `clean` method (aka destructor).

## Example

```Perl6
use v6;
use Clean;

class Foo does Cleanable {
  method clean {
    say "clean called!";
  }
}

clean Foo.new, -> $o { say $o.perl if $o.defined; }
```


## Installation

To install it using Panda (a module management tool bundled with Rakudo Star):

```
$ panda update
$ panda install Clean
```

## Testing

To run tests:

```
$ prove -e "perl6 -Ilib"
```

To run author tests:
```
$ TEST_AUTHOR=1 prove -e "perl6 -Ilib"
```

## Author

Ahmad M. Zawawi, azawawi on #perl6, https://github.com/azawawi/

## License

MIT License
