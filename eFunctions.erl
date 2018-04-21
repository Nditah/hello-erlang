% Funs are used to define anonymous functions in Erlang. 
% Syntax: F = fun (Arg1, Arg2, ... ArgN) ->       ...    End

-module(eFunctions). 
-export([start/0, call/2]). 

call(Arg1, Arg2) -> 
   io:format("~p ~p~n", [Arg1, Arg2]). 

start() -> 
	io:fwrite("\n\n ********** LESSON ON FUNCTIONS AND PROCESS IN ERLANG ********** \n\n"),
	% Create a process: spawn(Module, Name, Args)
	Pid = spawn(?MODULE, call, ["hello", "process"]), 
   	io:fwrite("~p",[Pid]),

	% The anonymous function is assigned to the variable A.
	% The anonymous function via the variable A().
	io:fwrite("\n\n The anonymous function\n"),
   A = fun() -> io:fwrite("Hello") end, 
   A(),

	% Another example of anonymous function is as follows, 
	% but this is with the use of parameters.
	io:fwrite("\n\n The anonymous function  with parameters\n"),
   B = fun(X) -> 
      io:fwrite("~p~n",[X]) 
      end, 
   B(5),

   % The Anonymous function have the ability to access the 
   % variables V which are outside of the scope of the anonymous function.
   % The anonymous function can still access the 
   % variable defined in the global scope.
   io:fwrite("\n\n The anonymous function access the global scope.\n"),
   V = 6, 
   D = fun(X) -> 
      io:fwrite("~p~n",[X]), 
      io:fwrite("~p~n",[V]) 
      end, 
   D(5),

   % function within a function
   % Adder is a higher order function defined as fun(X).
	% The Adder function fun(X) has a reference to another function fun(Y).
	io:fwrite("\n\n The anonymous function of function.\n"),
   Adder = fun(X) -> fun(Y) -> io:fwrite("~p~n",[X * (2 + Y)]) end end, 
   Z = Adder(6), 
   Z(10).