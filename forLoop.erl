-module(forLoop). 
-export([for/2,start/0]). 
%We are defining a recursive function which would 
%simulate the implementation of our for loop.
%
%We are using a guard within the ‘for’ function 
%to ensure that the value of N or the limit is a positive value.
%
%We recursively call the for function, by reducing 
%the value of N at each recursion.

for(0,_) -> 
   []; 
   
   for(N,Term) when N > 0 -> 
   io:fwrite("Great!~n"), 
   [Term|for(N-1,Term)]. 
   
start() -> 
   for(5,1).

