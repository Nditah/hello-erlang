-module(fileSys). 
-export([start/0]). 

start() -> 

 	io:fwrite("\n\n ********** LESSON ON FILE SYSTEM IN ERLANG ********** \n\n"),

	%   {ok, File} = file:open("Somefile.txt",[read]),
	%  Txt = file:read(File,1024 * 1024), 
	%   io:fwrite("~p~n",[Txt]).
   Txt = file:read_file("Somefile.txt"), 
   io:fwrite("~p~n",[Txt]),
	
	io:fwrite("\n       ................ Create Newfile ................       \n"),
	% write(FileHandler,text)
   {ok, Fd} = file:open("Newfile.txt", [write]), 
   file:write(Fd,"I will build an Open Source Peer-Peer Messaging App with Erlang"),

	% copy(source,destination)   
	file:copy("Newfile.txt","Duplicate.txt"),

	io:fwrite("\n       ................ Delete Duplicate ................       \n"),
	%delete(filename)
	file:delete("Duplicate.txt"),

	io:fwrite("\n       ................ List Directory ................       \n"),
	%list_dir(directory) method  list down the contents of a particular directory.
	io:fwrite("~p~n",[file:list_dir(".")]),

	io:fwrite("\n       ................ Create New Directory ................       \n"),
	%make_dir(directory) method  creates a new directory.
	io:fwrite("~p~n",[file:make_dir("newdir")]),

	io:fwrite("\n       ................ File Rename ................       \n"),
	%rename(oldfilename,newfilename)   method  renames an existing file.
	io:fwrite("~p~n",[file:rename("Newfile.txt","Renamedfile.txt")]),

	io:fwrite("\n       ................ File Size ................       \n"),
	%file_size(filename) determine the size of the file. This method is part of the filelib library.
	io:fwrite("~w~n",[filelib:file_size("Renamedfile.txt")]),
 
 	io:fwrite("\n       ................ List of Files (in current dir) ................       \n"),

	io:fwrite("~p~n",[file:list_dir(".")]),

	io:fwrite("\n       ................ Determines if Renamedfile.txt is a Files ................       \n"),
	%method is_file(filename) determines if a file is indeed a file.
	io:fwrite("~p~n",[filelib:is_file("Renamedfile.txt")]),

	io:fwrite("\n       ................ Determines if (eg newdir is) Directory ................       \n"),

	%method is_dir(directoryname) determines if (eg newdir is) a directory is indeed a directory.
	io:fwrite("~p~n",[filelib:is_dir("newdir")]).	