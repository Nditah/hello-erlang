1. Set the path of the erlang bin directory in System variables
C:\Program Files\erl9.3\bin
2. Open your Console in the project dir and type
	> erl
3. It takes you to Erlang shell. Enter the follwong
1> c(helloworld). % filename same as -module(helloworld).
{ok,helloworld}
2> helloworld: start(). % use the module name to access the function start()
Hello, world!
ok