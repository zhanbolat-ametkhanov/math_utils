-module(math_utils_tests).
-include_lib("eunit/include/eunit.hrl").

%% Define the test functions
%% Test the add/2 function
add_test() ->
    ?assertEqual(5, math_utils:add(2, 3)),
    ?assertEqual(-1, math_utils:add(-2, 1)),
    ?assertEqual(0, math_utils:add(0, 0)).

%% Test the subtract/2 function
subtract_test() ->
    ?assertEqual(1, math_utils:subtract(3, 2)),
    ?assertEqual(-5, math_utils:subtract(-2, 3)),
    ?assertEqual(0, math_utils:subtract(0, 0)).

%% Test the multiply/2 function
multiply_test() ->
    ?assertEqual(6, math_utils:multiply(2, 3)),
    ?assertEqual(-6, math_utils:multiply(-2, 3)),
    ?assertEqual(0, math_utils:multiply(0, 100)).

%% Test the divide/2 function
divide_test() ->
    ?assertEqual(2.0, math_utils:divide(6, 3)),
    ?assertEqual(-2.0, math_utils:divide(-6, 3)),
    ?assertEqual({error, division_by_zero}, math_utils:divide(1, 0)).

%% Test the factorial/1 function
factorial_test() ->
    ?assertEqual(1, math_utils:factorial(0)),
    ?assertEqual(1, math_utils:factorial(1)),
    ?assertEqual(120, math_utils:factorial(5)),
    ?assertEqual({error, invalid_argument}, math_utils:factorial(-1)).

%% Test the fibonacci/1 function
fibonacci_test() ->
    ?assertEqual(0, math_utils:fibonacci(0)),
    ?assertEqual(1, math_utils:fibonacci(1)),
    ?assertEqual(55, math_utils:fibonacci(10)),
    ?assertEqual({error, invalid_argument}, math_utils:fibonacci(-1)).

%% No need to group tests, EUnit will automatically discover test functions.
