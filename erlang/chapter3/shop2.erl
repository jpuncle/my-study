-module(shop2).
-export([cost/1]).
-export([total/1, total2/1]).
-import(lists, [map/2, sum/1]).

cost(oranges)     -> 5;
cost(newspaper)   -> 8;
cost(apples)      -> 2;
cost(pears)       -> 9;
cost(milk)        -> 7.

total(L) ->
    sum(map(fun({What, N}) -> cost(What) * N end, L)).

total2(L) ->
    sum([cost(A) * B || {A, B} <- L]).