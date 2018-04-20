% record(recordname , {Field1,Field2 ..Fieldn}) is data structure made of fields.
% Record instance is #recordname {fieldName1 = value1, fieldName2 = value2 .. fieldNameN = valueN} 

-module(eRecord). 
-export([start/0]). 
-record(person, {name = "", id, address=""}). 
-record(employee, {person, id}). 

start() -> 
	P = #person{name = "John", id = 1, address=""}, 
	io:fwrite("~p",[P#person.id]), 
	io:fwrite("~p~n",[P#person.name]),

	% Access an element
	P1 = P#person{name = "Dan"}, 
	io:fwrite("~p",[P1#person.id]), 
	io:fwrite("~p~n",[P1#person.name]),

	%nested records
	E = #employee{person=#person{name="John", address="A", id=1}, id=1}, 
	io:fwrite("~p~n",[E#employee.id]).