# reverse-shell
This is our CCDAD soltion ,coded by me to make a reverse shell between the cuda server machine at the administration and the local clients hosts !

<img src="https://themitigators.com/wp-content/uploads/2018/10/Reverse-Shell-illustration.png">

1 ) open a netcat server from you local client machine :

`nc -ntlp 5566`

2 ) make a connection from the server-host ,, when i compiled my "rev.c" file , i took in parameter 2 args ! [server addr & the port to bind the connection] :

`./rev @your_machine_ip 5566`

3 ) run any command from the client machine and the result will be executed from the server very quickly ,  enjoy the result ! 

<img src="https://i.ibb.co/4mp69CH/image.png" alt="image" border="0" align="center"> 
