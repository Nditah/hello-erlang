-module(strings). 
-import(string,[len/1, equal/2, concat/2, chr/2, substr/3, left/2]). 
-export([start/0]). 

start() ->
   Str1 = "Hello world! ",
   Str2 = "Erlang is cool so Love it!",  
   io:fwrite("\n\n ********** LESSON ON STRINGS IN ERLANG ********** \n\n"),

   io:fwrite("\nThe string Str1 = "),
   io:fwrite("~p~n", [Str1]),
   io:fwrite("\nThe string Str1 = "),
   io:fwrite("~p~n", [Str2]),

   io:fwrite("\nThe Length of Str1, len(Str) = "),
   Len1 = len(Str1),
   io:fwrite("~p~n", [Len1]),

   io:fwrite("\nIf two strings are equal, equal(Str1, Str2) = "),
   Eq = equal(Str1, Str2), 
   io:fwrite("~p~n",[Eq]), 

   io:fwrite("\nConcatenate strings concat(Str1, Str2) = "),
   Str3 = concat(Str1, Str2), 
   io:fwrite("~p~n",[Str3]),

   io:fwrite("\nReturns the index position of the character in the string. str(Str1, Chr1)  = "),
   Index1 = chr(Str1, $e), 
   io:fwrite("~p~n",[Index1]),

   io:fwrite("\nReturns the sub string based on the start position and the number. substr(str,start,number)  = "),
   Sub = substr(Str1, 2, 5), 
   io:fwrite("~p~n", [Sub]), 

   io:fwrite("\nReturns the sub string based on the left hand side of the string and the number. left(str,number) = "),   
   Sleft = left(Str1, 2), 
   io:fwrite("~p~n",[Sleft]).