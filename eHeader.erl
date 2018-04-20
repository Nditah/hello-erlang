% Header files are like include files in any other 
% programming language. 
% It is useful for splitting modules into different files and 
% then accessing these header files into separate programs.

-module(eHeader). 
-export([start/0]). 
-include("eHeaderFile.hrl"). 

start() -> 
   P = #person{name = "John",id = 1}, 
   % prints "John"
   io:fwrite("~p~n",[P#person.name]),
   % prints {3}
   io:fwrite("~w~n",[?macro1(1, 2)]).