-module(eList).
-import(lists,[all/2, any/2, append/2, delete/2, droplast/1, duplicate/2, last/1, max/1, min/1, member/2, merge/1, nth/2, nthtail/2, reverse/1, sort/1, sublist/2, sum/1 ]). 
-export([start/0]). 

% The List is a structure used to store a collection of data items.
% In Erlang, Lists are created by enclosing the values in square brackets.


start() -> 
   Lst1 = [1,1,2,3,17,5,13],
   Lst2 = [0,2,4,6,8],

   io:fwrite("\n\n ********** LESSON ON LIST IN ERLANG ********** \n\n"),

   io:fwrite("\nThe first List Lst1 = "),
   io:fwrite("~w~n",[Lst1]),
   io:fwrite("\nThe second List Lst2 = "),
   io:fwrite("~w~n",[Lst2]),

   io:fwrite("\nReturns true if Pred(Elem) returns true for all elements Elem in List, all(Pred,lst) = "),
   % In the above example, we first define a predicate function in which each list value 
   % is passed to the anonymous function. In the function, each list value is seen if it is divisible by 2.
   Predicate = fun(E) -> E rem 2 == 0 end, 
   Status = all(Predicate, Lst1), 
   io:fwrite("~w~n",[Status]),

   io:fwrite("\nReturns true if Pred(Elem) returns true for at least one element Elem in List, any(Pred,lst) = "),
   % In the above example, we first define a predicate function in which each list value is passed to 
   % the anonymous function. In this function, each list value is seen if it is divisible by 2.
   Predicate2 = fun(E2) -> E2 rem 2 == 0 end,
   Status2 = any(Predicate2, Lst1), 
   io:fwrite("~w~n",[Status2]),

   io:fwrite("\nReturns a new list made from the elements of List1 followed by the elements of List2, append(Lst1,Lst2) = "),
   Lst3 = append(Lst1, Lst2), 
   io:fwrite("~w~n",[Lst3]),

   io:fwrite("\nReturns a new list with the element deleted, delete(element,List1) = "),
   LstD = delete(2,Lst1), 
   io:fwrite("~w~n",[LstD]),

   io:fwrite("\nReturns a new list with the last element deleted, droplast(List1) = "),
   LstL = droplast(Lst1), 
   io:fwrite("~w~n",[LstL]),

   io:fwrite("\nReturns a list which contains N copies of the term Elem, duplicate(N, element) = "),
   LstDup = duplicate(5, 77), 
   io:fwrite("~w~n",[LstDup]),

   io:fwrite("\nReturns the last element of the list, last(Lst1) = "),
   io:fwrite("~w~n",[last(Lst1)]),

   io:fwrite("\nReturns the element of the list which has the maximum value, max(Lst1) = "),
   io:fwrite("~w~n",[max(Lst1)]),

   io:fwrite("\nReturns the element of the list which has the maximum value, min(Lst1) = "),
   io:fwrite("~w~n",[min(Lst1)]),

   io:fwrite("\nReturns if an element is present in the list, member(element, lst1) = "),
   io:fwrite("~w~n",[member(10, Lst1)]),

   io:fwrite("\nReturns the sorted list formed by merging all the sub-lists of ListOfLists, merge(ListsofLists)= "),
   io:fwrite("~w~n",[merge([Lst1, Lst2])]),

   io:fwrite("\nReturns the Nth element of List, nth(N,List), eg nth(3, Lst1) = "),
   io:fwrite("~w~n",[nth(3, Lst1)]),

   io:fwrite("\nReturns Nth tail of the List, that is, the sublist of List starting at N+1 and continuing up to the end of the list nthtail(3,Lst1) = "),
   io:fwrite("~w~n",[nthtail(3, Lst1)]),

   io:fwrite("\nReturns the Reverses a list of elements reverse(Lst1) = "),
   io:fwrite("~w~n",[reverse(Lst1)]),

   io:fwrite("\nReturns the Sorted list of elements sort(Lst1) = "),
   io:fwrite("~w~n",[sort(Lst1)]),

   io:fwrite("\nReturns a sublist of elements sublist(list, length) e.g sublist(Lst1,2) = "),
   io:fwrite("~w~n",[sublist(Lst1,2)]),

   io:fwrite("\nReturns the sum of elements sum(list) e.g sum(Lst1) = "),
   io:fwrite("~p~n",[sum(Lst1)]).