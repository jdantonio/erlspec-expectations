-module(erlspec_tests).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-include_lib("include/erlspec.hrl").

delta_function_test() ->
  {"delta/2 function tests", [
      ?assert(erlspec:delta(nil, nil) == 0),
      ?assert(erlspec:delta(1, nil) == 1),
      ?assert(erlspec:delta(-1, nil) == 1),
      ?assert(erlspec:delta(nil, 1) == 1),
      ?assert(erlspec:delta(nil, -1) == 1),
      ?assert(erlspec:delta(5, 5) == 0),
      ?assert(erlspec:delta(5, 10) == 5),
      ?assert(erlspec:delta(-5, 5) == 10),
      ?assert(erlspec:delta(-5, -5) == 0),
      ?assert(erlspec:delta(-5, -10) == 5),
      ?assert(erlspec:delta(5, -5) == 10)
      ]}.

type_of_test() ->
  {"type_of/1 function tests", [
      ?assert(erlspec:type_of(an_atom) == atom),
      ?assert(erlspec:type_of(1) == integer),
      ?assert(erlspec:type_of(1.0) == float),
      ?assert(erlspec:type_of(true) == boolean),
      ?assert(erlspec:type_of([]) == list),
      ?assert(erlspec:type_of({}) == tuple),
      ?assert(erlspec:type_of(<<1>>) == binary),
      ?assert(erlspec:type_of(<<1:1>>) == bitstring),
      ?assert(erlspec:type_of(spawn(fun() -> nil end)) == pid),
      ?assert(erlspec:type_of(make_ref()) == reference),
      %?assert(erlspec:type_of(1) == port),
      %?assert(erlspec:type_of(1) == unknown),
      ?assert(erlspec:type_of(fun() -> nil end) == function)
      ]}.

delta_macro_test() ->
  {"delta/2 macro tests", [
      ?assert(?delta(nil, nil) == 0),
      ?assert(?delta(1, nil) == 1),
      ?assert(?delta(-1, nil) == 1),
      ?assert(?delta(nil, 1) == 1),
      ?assert(?delta(nil, -1) == 1),
      ?assert(?delta(5, 5) == 0),
      ?assert(?delta(5, 10) == 5),
      ?assert(?delta(-5, 5) == 10),
      ?assert(?delta(-5, -5) == 0),
      ?assert(?delta(-5, -10) == 5),
      ?assert(?delta(5, -5) == 10)
      ]}.

should_macro_test() ->
  {"should/1 macro tests", [
      ?assert(?should(1 == 1) == ok),
      ?assertException(error, _, ?should(1 == 0))
    ]}.

should_not_macro_test() ->
  {"shouldNot/1 macro tests", [
      ?assert(?shouldNot(1 == 0) == ok),
      ?assertException(error, _, ?shouldNot(1 == 1))
    ]}.

should_equal_macro_test() ->
  {"shouldEqual/2 macro tests", [
      ?assert(?shouldEqual(1, 1) == ok),
      ?assertException(error, _, ?shouldEqual(1, 0))
    ]}.

should_eql_macro_test() ->
  {"shouldEql/2 macro tests", [
      ?assert(?shouldEql(1, 1) == ok),
      ?assertException(error, _, ?shouldEql(1, 0))
    ]}.

should_not_equal_macro_test() ->
  {"shouldNotEqual/2 macro tests", [
      ?assert(?shouldNotEqual(1, 0) == ok),
      ?assertException(error, _, ?shouldNotEqual(0, 0))
    ]}.

should_not_eql_macro_test() ->
  {"shouldNotEql/2 macro tests", [
      ?assert(?shouldNotEql(1, 0) == ok),
      ?assertException(error, _, ?shouldNotEql(0, 0))
    ]}.

should_be_macro_test() ->
  {"shouldBe/1 macro tests", [
      ?assert(?shouldBeAtom(atom) == ok),
      ?assert(?shouldNotBeAtom(0) == ok),
      ?assertException(error, _, ?shouldBeAtom(0)),

      ?assert(?shouldBeBinary(<<1>>) == ok),
      ?assert(?shouldNotBeBinary(0) == ok),
      ?assertException(error, _, ?shouldBeBinary(0)),

      ?assert(?shouldBeBitstring(<<1:1>>) == ok),
      ?assert(?shouldNotBeBitstring(0) == ok),
      ?assertException(error, _, ?shouldBeBitstring(0)),

      ?assert(?shouldBeBoolean(true) == ok),
      ?assert(?shouldNotBeBoolean(0) == ok),
      ?assertException(error, _, ?shouldBeBoolean(0)),

      ?assert(?shouldBeBool(true) == ok),
      ?assert(?shouldNotBeBool(0) == ok),
      ?assertException(error, _, ?shouldBeBool(0)),

      ?assert(?shouldBeFloat(1.0) == ok),
      ?assert(?shouldNotBeFloat(0) == ok),
      ?assertException(error, _, ?shouldBeFloat(0)),

      ?assert(?shouldBeFunction(fun() -> nil end) == ok),
      ?assert(?shouldNotBeFunction(0) == ok),
      ?assertException(error, _, ?shouldBeFunction(0)),

      ?assert(?shouldBeFunc(fun() -> nil end) == ok),
      ?assert(?shouldNotBeFunc(0) == ok),
      ?assertException(error, _, ?shouldBeFunc(0)),

      ?assert(?shouldBeFun(fun() -> nil end) == ok),
      ?assert(?shouldNotBeFun(0) == ok),
      ?assertException(error, _, ?shouldBeFun(0)),

      ?assert(?shouldBeInteger(1) == ok),
      ?assert(?shouldNotBeInteger(1.0) == ok),
      ?assertException(error, _, ?shouldBeInteger(1.0)),

      ?assert(?shouldBeInt(1) == ok),
      ?assert(?shouldNotBeInt(1.0) == ok),
      ?assertException(error, _, ?shouldBeInt(1.0)),

      ?assert(?shouldBeList([]) == ok),
      ?assert(?shouldNotBeList(0) == ok),
      ?assertException(error, _, ?shouldBeList(0)),

      ?assert(?shouldBeNumber(1) == ok),
      ?assert(?shouldBeNumber(1.0) == ok),
      ?assert(?shouldNotBeNumber(nil) == ok),
      ?assertException(error, _, ?shouldBeNumber(nil)),

      ?assert(?shouldBeNumeric(1) == ok),
      ?assert(?shouldBeNumeric(1.0) == ok),
      ?assert(?shouldNotBeNumeric(nil) == ok),
      ?assertException(error, _, ?shouldBeNumeric(nil)),

      ?assert(?shouldBePid(spawn(fun() -> nil end)) == ok),
      ?assert(?shouldNotBePid(0) == ok),
      ?assertException(error, _, ?shouldBePid(0)),

      %?assert(?shouldBePort(port) == ok),
      ?assert(?shouldNotBePort(0) == ok),
      ?assertException(error, _, ?shouldBePort(0)),

      ?assert(?shouldBeReference(make_ref()) == ok),
      ?assert(?shouldNotBeReference(0) == ok),
      ?assertException(error, _, ?shouldBeReference(0)),

      ?assert(?shouldBeRef(make_ref()) == ok),
      ?assert(?shouldNotBeRef(0) == ok),
      ?assertException(error, _, ?shouldBeRef(0)),

      ?assert(?shouldBeTuple({}) == ok),
      ?assert(?shouldNotBeTuple(0) == ok),
      ?assertException(error, _, ?shouldBeTuple(0))
      ]}.

-endif.
