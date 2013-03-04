-module(erlspec_tests).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-include_lib("include/erlspec.hrl").

delta_with_positive_and_nil_test() ->
  ?assertEqual(?delta(1, nil), 1).

delta_with_negative_and_nil_test() ->
  ?assertEqual(?delta(nil, -5), 5).

delta_with_positive_numbers_test() ->
  ?assertEqual(?delta(1, 5), 4).

delta_with_negative_numbers_test() ->
  ?assertEqual(?delta(-1, -5), 4).

delta_with_positive_and_negative_numbers_test() ->
  ?assertEqual(?delta(-1, 5), 6).

-endif.
