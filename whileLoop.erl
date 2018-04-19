-module(whileLoop). 
-export([while/1,while/2, start/0]). 

%Define a recursive function called while which 
% would simulate the implementation of our while loop.

%Input a list of values defined in the variable X 
% to our while function as an example.

%The while function takes each list value and stores 
% the intermediate value in the variable ‘Acc’.

%The while loop is then called recursively for each 
% value in the list.

while(L) -> while(L,0). 
while([], Acc) -> Acc;

while([_|T], Acc) ->
   io:fwrite("~w~n",[Acc]), 
   while(T,Acc+1). 
   
   start() -> 
   X = [1,2,3,4], 
   while(X).