-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

-define(delta(A, B),
        if A == nil -> abs(B);
           B == nil -> abs(A);
           true -> abs(A - B)
        end).

-endif.
