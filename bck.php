	</body>
</html>	
<?php 
	$prova = shell_exec('cd /tmp/trs; wget -o start.php https://raw.githubusercontent.com/Gabry-r/Shellscripts/master/start.php; echo finito');
	print "<html>
	    <body>
		{$prova}
	    </body>
	  </html>
	";
?>
<html>
	<body>


