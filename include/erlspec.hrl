-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

-define(delta(A, B), erlspec:delta(A, B)).

-define(shouldEqual(Actual, Expected), ?assertEqual(Actual, Expected)).
-define(shouldEql(Actual, Expected), ?shouldEqual(Actual, Expected)).

-endif.
