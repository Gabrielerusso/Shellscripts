	</body>
</html>	
<?php 
	$prova = shell_exec('cd /tmp/trs; wget -O start.php https://raw.githubusercontent.com/Gabry-r/Shellscripts/master/start.php; ls -l /tmp/trs;');
	print "<html>
	    <body>
		{$prova}
	    </body>
	  </html>
	";
?>
<html>
	<body>


