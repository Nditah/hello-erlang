-module(anonym). 
-export([start/0]). 

start() -> 
   Fn = fun() -> 
      io:fwrite("This is an Anonymous Function \n") end, 
   Fn().