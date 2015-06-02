-module(lib_misc).

-export([on_exit/1, start/0]).


log_error(Pid, Why) ->
    io:format("~p died with: ~p~n", [Pid, Why]).


start() ->
    receive
        X -> list_to_atom(X)
    end.


on_exit(Pid) ->
    spawn(fun() ->
            Ref = monitor(process, Pid),
            receive
                {'DOWN', Ref, process, Pid, Why} ->
                    log_error(Pid, Why)
            end
        end).
