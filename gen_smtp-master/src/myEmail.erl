-module(myEmail). 
-export([start/0]). 

start() -> 
   gen_smtp_client:send({"sender@gmail.com", ["receiver@gmail.com"], "Subject: testing"},
   
   [{relay, "smtp.gmail.com"}, {ssl, true}, {username, "sender@gmail.com"}, 
      {password, "senderpassword"}]).