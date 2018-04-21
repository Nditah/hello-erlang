-module(eDatabase). 
-export([start/0]). 

start() ->
   odbc:start(), 
   %%{ok, Ref} = odbc:connect("DSN = usersqlserver; UID = testuser; PWD = test123", []), 
   {ok, Ref} = odbc:connect("driver=MySQL;server=localhost;port=3306;Uid=root",[]),
   io:fwrite("~p",[Ref]).

   

   
   
   
