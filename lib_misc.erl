-module(lib_misc).

-export([on_exit/2, start/0, log_error/2, keep_alive/2]).


log_error(Pid, Why) ->
    io:format("~p died with: ~p~n", [Pid, Why]).


start() ->
    receive
        X -> list_to_atom(X)
    end.


on_exit(Pid, F) ->
    spawn(fun() ->
            Ref = monitor(process, Pid),
            receive
                {'DOWN', Ref, process, Pid, Why} ->
                    F(Pid, Why)
            end
        end).

keep_alive(Name, Fun) ->
    register(Name, Pid = spawn(Fun)),
    on_exit(Pid, fun(_Why) -> keep_alive(Name, Fun) end).
