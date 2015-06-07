-module(basic_demo).
-export([loop/0]).

%% http://www.ituring.com.cn/article/69653

loop() ->
    receive
        {rectangle, Width, Ht} ->
            io:format("Area of rectangle is ~p~n",[Width * Ht]),
            loop();
        {square, Side} ->
            io:format("Area of square is ~p~n", [Side * Side]),
            loop()
   end.
