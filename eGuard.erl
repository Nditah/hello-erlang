% Guards are constructs that we can use to increase the power of 
% pattern matching. Using guards, we can perform simple tests and 
% comparisons on the variables in a pattern.

% The general syntax of the guard statement is as follows −

% function(parameter) when condition ->

-module(eGuard). 
-export([display/1, show/1, start/0]). 

display(N) when N > 10 ->   
   io:fwrite("greater then 10"); 
display(N) when N < 10 -> io:fwrite("Less 
   than 10"). 

show(N) when N > 10 , is_integer(N) -> 
   io:fwrite("greater then 10"); 
show(N) when N < 10 -> 
   io:fwrite("Less than 10"). 
   
start() -> 
   

start() -> 
%
   display(11),
   show(12),
%
   N = 9, 
   if 
      N > 10 -> 
         io:fwrite("N is greater than 10"); 
      true -> 
         io:fwrite("N is less than 10") 
   end,
   %
      A = 9, 
   case A of {A} when A>10 -> 
      io:fwrite("The value of A is greater than 10"); _ -> 
      io:fwrite("The value of A is less than 10") 
   end,   