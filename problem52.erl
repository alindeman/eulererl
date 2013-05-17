-module(problem52).
-export([run/0]).

run() ->
  find_solution(1).

find_solution(Start) ->
  case satisfies_problem(Start) of
    true  -> Start;
    false -> find_solution(Start + 1)
  end.

satisfies_problem(N) ->
  ListOfProducts = [A * N || A <- [1, 2, 3, 4, 5, 6]],
  same_digits(ListOfProducts).

same_digits(ListOfNumbers) ->
  SortedDigits = lists:map(fun(N) -> sorted_digits(N) end, ListOfNumbers),
  sets:size(sets:from_list(SortedDigits)) =:= 1.

sorted_digits(N) ->
  lists:sort(digits(N, [])).

digits(N, L) when N =< 0 ->
  L;
digits(N, L) ->
  digits(N div 10, [(N rem 10)|L]).
