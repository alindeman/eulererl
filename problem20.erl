-module(problem20).
-export([run/0]).

run() ->
  sum(fact(100)).

sum(N) when N =< 0 ->
  0;
sum(N) ->
  (N rem 10) + sum(N div 10).

fact(N) when N =< 1 ->
  1;
fact(N) ->
  N * fact(N - 1).
