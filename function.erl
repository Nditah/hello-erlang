-module(function). 
-import(io,[fwrite/1, fwrite/2]).
-author("Nditah"). 
-version("1.0"). 
-export([tail_reverse/2,duplicate/2,tail_len/1,tail_len/2,len/1, fac/1, add/2, add/3, start/0]). 

add(X,Y) -> 
   Z = X+Y, 
   fwrite("~w~n",[Z]). 
   
add(X,Y,Z) -> 
   A = X+Y+Z, 
   fwrite("~w~n",[A]). 
 
%We are first defining a function called fac(N).
%We are able to define the recursive function by calling fac(N) recursively.

fac(N) when N == 0 -> 1; 
fac(N) when N > 0 -> N*fac(N-1). 

% LEN RECURSION
% The first function len([]) is used for the special case condition if the list is empty.
% The [H|T] pattern to match against lists of one or more elements, as a list of length one 
% will be defined as [X|[]] and a list of length two will be defined as [X|[Y|[]]]. 
% Note that the second element is a list itself. This means we only need to count the 
% first one and the function can call itself on the second element. 
% Given each value in a list counts as a length of 1.

len([]) -> 0; 
len([_|T]) -> 1 + len(T). 

% TAIL RECURSSION
% temporary variable is sometimes called accumulator and acts as a place to store the results
% of our computations as they happen in order to limit the growth of our calls.
tail_len(L) -> tail_len(L,0). 
tail_len([], Acc) -> Acc; 
tail_len([_|T], Acc) -> tail_len(T,Acc+1). 

% DUPLICATING FT
%  function which takes an integer as its first parameter and then any other term as its second parameter.
% It will then create a list of as many copies of the term as specified by the integer.
duplicate(0,_) -> 
   []; 
duplicate(N,Term) when N > 0 ->
   io:fwrite("~w,~n",[Term]),
   [Term|duplicate(N-1,Term)]. 

% REVERSAL FT
% We are again using the concept of temporary variables to store 
% each element of the List in a variable called Acc.
% We then call tail_reverse recursively, but this time around, 
% we ensure that the last element is put in the new list first.
% We then recursively call tail_reverse for each element in the list.

tail_reverse(L) -> tail_reverse(L,[]).

tail_reverse([],Acc) -> Acc; 
tail_reverse([H|T],Acc) -> tail_reverse(T, [H|Acc]).


start() ->
   fwrite("\n Add Function of add(5,6) = "),
   add(5,6),   
   fwrite(" \n Overloaded Add Function of add(5,6,6) = "),
   add(5,6,6),

   T = fac(4), 
   fwrite(" \n Factorial Function of 4 = "),
   fwrite("~w~n",[T]),

   A = [1,2,3,4], 
   B = len(A), 
   fwrite(" \n Recursive Length Function of len([1,2,3,4]) = "),
   fwrite("~w~n",[B]),

   C = tail_len(A), 
   fwrite(" \n Recursive Tail Function of len([1,2,3,4]) = "),
   io:fwrite("~w~n",[C]),

   fwrite(" \n Duplicating Function duplicate(5,1) = "),
   duplicate(5,1), 

   fwrite(" \n Tail Reverse Function tail_reverse([1,2,3,4]) = "),
   D = tail_reverse(A), 
   fwrite("~w~n",[D]).