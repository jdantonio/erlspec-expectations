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
      %?assert(erlspec:type_of(1) == number),
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

-endif.
