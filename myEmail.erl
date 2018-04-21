-module(myEmail). 
-export([start/0]). 

start() -> 
   gen_smtp_client: send({"sender@gmail.com", ["receiver@gmail.com"], "Subject: testing\r\nFrom: De3Dcoder Sam \r\nTo: Some Dude \r\n\r\nThis is the email body"},

   [{relay, "smtp.gmail.com"}, {ssl, false}, {username, "sender@gmail.com"}, 
      {password, "mypass"}]).