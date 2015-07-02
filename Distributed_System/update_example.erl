-module(update_example).

-export([start/0, run/0]).

%% http://wudaijun.com/2015/04/erlang-hotcode/


f() ->
    io:format("this is old code~n").

run() ->
    f(),
    timer:sleep(5000),
    ?MODULE:run().

start() ->
    spawn(fun() -> run() end).
