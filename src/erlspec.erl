-module(erlspec).

-include("erlspec.hrl").

-export([
  delta/2,
  type_of/1
  ]).

delta(nil, nil) -> 0;
delta(A, nil) -> abs(A);
delta(nil, B) -> abs(B);
delta(A, B) -> abs(A - B).

% http://fullof.bs/type-of-variable-type-detection-in-erlang/
% http://erlang.org/doc/man/erlang.html#is_atom-1
type_of(X) when is_integer(X)   -> integer;
type_of(X) when is_float(X)     -> float;
type_of(X) when is_list(X)      -> list;
type_of(X) when is_tuple(X)     -> tuple;
type_of(X) when is_binary(X)    -> binary;
type_of(X) when is_bitstring(X) -> bitstring;
type_of(X) when is_boolean(X)   -> boolean;
type_of(X) when is_function(X)  -> function;
type_of(X) when is_pid(X)       -> pid;
type_of(X) when is_port(X)      -> port;
type_of(X) when is_reference(X) -> reference;
type_of(X) when is_number(X)    -> number;
type_of(X) when is_atom(X)      -> atom;
type_of(_X)                     -> unknown.
