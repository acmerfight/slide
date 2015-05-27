-module(concurrency_test).
-export([max/1]).



for(N, N, F) -> [F()];
for(I, N, F) -> [F() | for(I+1, N, F)].


max(N) ->
   for(1, N, fun() -> spawn(fun() -> io:format("~p~n",[2 + 2]) end) end).

