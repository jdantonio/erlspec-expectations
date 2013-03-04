# Erlspec Expectations [![Build Status](https://secure.travis-ci.org/jdantonio/erlspec-expectations.png)](http://travis-ci.org/jdantonio/erlspec-expectations?branch=master)

RSpec inspired test expectations for Erlang.

There's nothing wrong with the old-school *assert* macros provided by
[EUnit](http://erlang.org/doc/apps/eunit/chapter.html) and
[Common Test](http://www.erlang.org/doc/apps/common_test/basics_chapter.html).
They really are all you need. But I'm a Ruby guy and I love me some
[RSpec](http://rspec.info/) when I'm writing Ruby tests. My brain more
easily thinks in "should" symantics that "assert". So I wrote a bunch
of Erlang expectations inspired by RSpec. Use them if you like

## Installation

Use [Rebar](https://github.com/basho/rebar) and add this to your *rebar.config* file

    {deps, [{erlspec, "0.0.*", {git, "git://github.com/jdantonio/erlspec-expectations.git", "HEAD"}}]}.

## Usage

Use these macros in your tests
    
    ?delta(5, 10) == 5
    ?should(1 == 1)
    ?shouldNot(1 == 0)
    ?shouldBeTrue(true)
    ?shouldBeFalse(false)
    ?shouldEqual(1, 1)
    ?shouldEql(1, 1)
    ?shouldNotEqual(1, 0)
    ?shouldNotEql(1, 0)
    ?shouldBeWithin(1.00, 1.05, 0.1)
    ?shouldBeClose(1.00, 1.05, 0.1)
    ?shouldBeAtom(atom)
    ?shouldNotBeAtom(0)
    ?shouldBeBinary(<<1>>)
    ?shouldNotBeBinary(0)
    ?shouldBeBitstring(<<1:1>>)
    ?shouldNotBeBitstring(0)
    ?shouldBeBoolean(true)
    ?shouldNotBeBoolean(0)
    ?shouldBeBool(true)
    ?shouldNotBeBool(0)
    ?shouldBeFloat(1.0)
    ?shouldNotBeFloat(0)
    ?shouldBeFunction(fun() -> nil end)
    ?shouldNotBeFunction(0)
    ?shouldBeFunc(fun() -> nil end)
    ?shouldNotBeFunc(0)
    ?shouldBeFun(fun() -> nil end)
    ?shouldNotBeFun(0)
    ?shouldBeInteger(1)
    ?shouldNotBeInteger(1.0)
    ?shouldBeInt(1)
    ?shouldNotBeInt(1.0)
    ?shouldBeList([])
    ?shouldNotBeList(0)
    ?shouldBeNumber(1)
    ?shouldBeNumber(1.0)
    ?shouldNotBeNumber(nil)
    ?shouldBeNumeric(1)
    ?shouldBeNumeric(1.0)
    ?shouldNotBeNumeric(nil)
    ?shouldBePid(spawn(fun() -> nil end))
    ?shouldNotBePid(0)
    ?shouldBePort(Port)
    ?shouldNotBePort(0)
    ?shouldBeReference(make_ref())
    ?shouldNotBeReference(0)
    ?shouldBeRef(make_ref())
    ?shouldNotBeRef(0)
    ?shouldBeTuple({})
    ?shouldNotBeTuple(0)
    ?shouldMatch("hello world", "hello")
    ?shouldNotMatch("hello world", "garbage")
    
## Copyright

Copyright &copy; 2013 [Jerry D'Antonio](https://twitter.com/jerrydantonio).
It is free software and may be redistributed under the terms specified in
the LICENSE file.

## License

Released under the MIT license.

http://www.opensource.org/licenses/mit-license.php

> Permission is hereby granted, free of charge, to any person obtaining a copy  
> of this software and associated documentation files (the "Software"), to deal  
> in the Software without restriction, including without limitation the rights  
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
> copies of the Software, and to permit persons to whom the Software is  
> furnished to do so, subject to the following conditions:  
> 
> The above copyright notice and this permission notice shall be included in  
> all copies or substantial portions of the Software.  
> 
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE  
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER  
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN  
> THE SOFTWARE.  
