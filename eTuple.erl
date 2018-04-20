% A tuple is a compound data type with a fixed number of element.

-module(eTuple). 
-export([start/0]). 

start() ->
	io:fwrite("\n\n ********** LESSON ON TUPLE IN ERLANG ********** \n\n"),
	T = {john,24,{june,25}} , 

	io:fwrite("\n* A tuple T is a compound data type with a fixed number of element. \n="),
	io:fwrite("~w~n",[T]),

	io:fwrite("\n* tuple_size(tuple) method returns the number of elements in a tuple. \n="),
	io:fwrite("~w~n",[tuple_size(T)]),

	io:fwrite("\n* is_tuple(tuple) method  verifies to see if it really is a tuple. \n="),
	io:fwrite("~w~n",[is_tuple(T)]),

	io:fwrite("\n* list_to_tuple(list) method returns a tuple based on the list provided \n="),
	io:fwrite("~w~n",[list_to_tuple([1,2,3])]),

	io:fwrite("\n* tuple_to_list(list) method returns a list based on the tuple provided \n="),
	io:fwrite("~w~n",[tuple_to_list({1,2,3})]).