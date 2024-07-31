-module(math_utils).
-export([add/2, subtract/2, multiply/2, divide/2, factorial/1, fibonacci/1]).

%% Function to add two numbers
add(A, B) ->
    A + B.

%% Function to subtract two numbers
subtract(A, B) ->
    A - B.

%% Function to multiply two numbers
multiply(A, B) ->
    A * B.

%% Function to divide two numbers
divide(A, B) ->
    if
        B =/= 0 -> A / B;
        true -> {error, division_by_zero}
    end.

%% Function to calculate factorial
factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1);
factorial(_) -> {error, invalid_argument}.

%% Function to calculate Fibonacci number
fibonacci(0) -> 0;
fibonacci(1) -> 1;
fibonacci(N) when N > 1 -> fibonacci(N - 1) + fibonacci(N - 2);
fibonacci(_) -> {error, invalid_argument}.
