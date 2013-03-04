-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

-define(delta(A, B), erlspec:delta(A, B)).

-define(should(Actual), ?assert(Actual)).
-define(shouldNot(Actual), ?assert(not(Actual))).

-define(shouldEqual(Actual, Expected), ?assert(Actual == Expected)).
-define(shouldEql(Actual, Expected), ?shouldEqual(Actual, Expected)).

-define(shouldNotEqual(Actual, Expected), ?assert(Actual /= Expected)).
-define(shouldNotEql(Actual, Expected), ?shouldNotEqual(Actual, Expected)).

-define(shouldBeAtom(Actual), ?assert(is_atom(Actual) == true)).
-define(shouldNotBeAtom(Actual), ?assert(is_atom(Actual) == false)).

-define(shouldBeBinary(Actual), ?assert(is_binary(Actual) == true)).
-define(shouldNotBeBinary(Actual), ?assert(is_binary(Actual) == false)).

-define(shouldBeBitstring(Actual), ?assert(is_bitstring(Actual) == true)).
-define(shouldNotBeBitstring(Actual), ?assert(is_bitstring(Actual) == false)).

-define(shouldBeBoolean(Actual), ?assert(is_boolean(Actual) == true)).
-define(shouldNotBeBoolean(Actual), ?assert(is_boolean(Actual) == false)).
-define(shouldBeBool(Actual), ?shouldBeBoolean(Actual)).
-define(shouldNotBeBool(Actual), ?shouldNotBeBoolean(Actual)).

-define(shouldBeFloat(Actual), ?assert(is_float(Actual) == true)).
-define(shouldNotBeFloat(Actual), ?assert(is_float(Actual) == false)).

-define(shouldBeFunction(Actual), ?assert(is_function(Actual) == true)).
-define(shouldNotBeFunction(Actual), ?assert(is_function(Actual) == false)).

-define(shouldBeFunc(Actual), ?assert(is_function(Actual) == true)).
-define(shouldNotBeFunc(Actual), ?assert(is_function(Actual) == false)).

-define(shouldBeFun(Actual), ?assert(is_function(Actual) == true)).
-define(shouldNotBeFun(Actual), ?assert(is_function(Actual) == false)).

-define(shouldBeInteger(Actual), ?assert(is_integer(Actual) == true)).
-define(shouldNotBeInteger(Actual), ?assert(is_integer(Actual) == false)).

-define(shouldBeInt(Actual), ?assert(is_integer(Actual) == true)).
-define(shouldNotBeInt(Actual), ?assert(is_integer(Actual) == false)).

-define(shouldBeList(Actual), ?assert(is_list(Actual) == true)).
-define(shouldNotBeList(Actual), ?assert(is_list(Actual) == false)).

-define(shouldBeNumber(Actual), ?assert(is_number(Actual) == true)).
-define(shouldNotBeNumber(Actual), ?assert(is_number(Actual) == false)).
-define(shouldBeNumeric(Actual), ?shouldBeNumber(Actual)).
-define(shouldNotBeNumeric(Actual), ?shouldNotBeNumber(Actual)).

-define(shouldBePid(Actual), ?assert(is_pid(Actual) == true)).
-define(shouldNotBePid(Actual), ?assert(is_pid(Actual) == false)).

-define(shouldBePort(Actual), ?assert(is_port(Actual) == true)).
-define(shouldNotBePort(Actual), ?assert(is_port(Actual) == false)).

-define(shouldBeReference(Actual), ?assert(is_reference(Actual) == true)).
-define(shouldNotBeReference(Actual), ?assert(is_reference(Actual) == false)).
-define(shouldBeRef(Actual), ?shouldBeReference(Actual)).
-define(shouldNotBeRef(Actual), ?shouldNotBeReference(Actual)).

-define(shouldBeTuple(Actual), ?assert(is_tuple(Actual) == true)).
-define(shouldNotBeTuple(Actual), ?assert(is_tuple(Actual) == false)).

-endif.
