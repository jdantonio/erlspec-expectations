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
