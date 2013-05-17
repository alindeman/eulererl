-module(problem20).
-export([run/0]).

run() ->
  sum(fact(100)).

sum(N) ->
  sum(N, []).

sum(N, L) when N =< 0 ->
  lists:foldl(fun(X, Sum) -> X + Sum end, 0, L);
sum(N, L) ->
  sum(N div 10, [(N rem 10)|L]).

fact(N) ->
  fact(N, []).

fact(N, L) when N =< 1 ->
  lists:foldl(fun(X, Prod) -> X * Prod end, 1, L);
fact(N, L) ->
  fact(N - 1, [N|L]).
