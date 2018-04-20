% Macros are generally used for inline code replacements:
%	-define(Constant, Replacement).
%	-define(Func(Var1, Var2,.., Var), Replacement).

-module(eMacros). 
-export([start/0]). 
-define(macro1(X,Y),{X+Y}). 

start() ->
   io:fwrite("~w",[?macro1(1,2)]).

   