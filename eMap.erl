% A map is a compound data type with a variable number of key-value associations.
-module(eMap). 
-export([start/0]). 

start() -> 

	io:fwrite("\n\n ********** LESSON ON MAP IN ERLANG ********** \n\n"),
	M1 = #{name=>john, age=>25}, 
	io:fwrite("\n................ map_size(M1) ................\n"),
	io:fwrite("~p~n",[map_size(M1)]),

	% from_list(Lst) method is used to generate a map from a list.
    Lst1 = [{"a",1},{"b",2},{"c",3}], 

    io:fwrite("\n* maps:from_list(Lst1) method  generates a map from a list \n="),
    Map1 = maps:from_list(Lst1), 
	io:fwrite("~p~n", [Map1]),

	io:fwrite("\n* maps:find(key,map) method finds if a particular key exists in the map Map1.\n="),
	io:fwrite("~p~n",[maps:find("a", Map1)]),

	io:fwrite("\n* maps:get(key,map) method gets the value of a particular key in the map Map1.\n="),
	io:fwrite("~p~n",[maps:get("a", Map1)]),

	io:fwrite("\n* maps:Is_key(key,map) method determines if a particular key is defined as a key in the map Map1.\n="),
	io:fwrite("~p~n",[maps:is_key("a", Map1)]),

	io:fwrite("\n* maps:keys(map) method returns all the keys from a map Map1.\n="),
	io:fwrite("~p~n",[maps:keys(Map1)]),

	Lst2=[{"d",4},{"e",5},{"f",6}], 
	Map2 = maps:from_list(Lst2), 

	io:fwrite("\n* Map1 = "),
	io:fwrite("~p~n", [Map1]),
	io:fwrite("\n* Map2 = "),
	io:fwrite("~p~n", [Map2]),

	io:fwrite("\n* maps:merge(map1, map2) method merges 2 maps.\n="),	
	io:fwrite("~p~n",[maps:merge(Map1, Map2)]),

	io:fwrite("\n* maps:put(key1,value1,map1) adds a key value pair to the map Map1.\n="),	
	io:fwrite("~p~n",[maps:put("d",4,Map1)]),

	io:fwrite("\n* maps:values(map) return all the values from the map Map1.\n="),	
	io:fwrite("~p~n",[maps:values(Map1)]).