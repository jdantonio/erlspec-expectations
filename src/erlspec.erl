-module(erlspec).

-include("erlspec.hrl").

-export([
  delta/2
  ]).

delta(nil, nil) -> 0;
delta(A, nil) -> abs(A);
delta(nil, B) -> abs(B);
delta(A, B) -> abs(A - B).
