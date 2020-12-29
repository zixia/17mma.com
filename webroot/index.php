<?php
$domain = $_SERVER['HTTP_HOST'];

if ( !preg_match('/^17mma/i',$domain) 
	&& !preg_match('/^www\.17mma/i',$domain) )
{
	header("Location: /home/",TRUE,302);
	die();
}

header("Location: /home/",TRUE,302);
die();
	
?>
