-module(function). 
-import(io,[fwrite/1, fwrite/2]).
-author("Nditah"). 
-version("1.0"). 
-export([fac/1, add/2, add/3, start/0]). 

add(X,Y) -> 
   Z = X+Y, 
   fwrite("~w~n",[Z]). 
   
add(X,Y,Z) -> 
   A = X+Y+Z, 
   fwrite("~w~n",[A]). 
 
fac(N) when N == 0 -> 1; 
fac(N) when N > 0 -> N*fac(N-1). 

start() ->
   T = fac(4), 
   add(5,6), 
   add(5,6,6),
   fwrite("~w",[T]).

