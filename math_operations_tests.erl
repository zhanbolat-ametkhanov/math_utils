-module(math_operations_tests).
-include_lib("eunit/include/eunit.hrl").

%% Test the add/2 function
add_test_() ->
    [
        %% Test case: adding positive numbers
        ?_assertEqual(5, math_operations:add(2, 3)),

        %% Test case: adding negative numbers
        ?_assertEqual(-5, math_operations:add(-2, -3)),

        %% Test case: adding a positive and a negative number
        ?_assertEqual(1, math_operations:add(3, -2)),

        %% Test case: adding zeros
        ?_assertEqual(0, math_operations:add(0, 0))
    ].
