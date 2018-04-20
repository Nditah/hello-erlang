% record(recordname , {Field1,Field2 ..Fieldn}) is data structure made of fields.
% Record instance is #recordname {fieldName1 = value1, fieldName2 = value2 .. fieldNameN = valueN} 

-module(eRecord). 
-export([start/0]). 
-record(person, {name = "", id}). 

start() -> 
   P = #person{name="John",id=1}.