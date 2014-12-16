<?php

session_start();
$errmsg_arr = array();
$errflag = false;

try {
	$dbh = new PDO('mysql:host=127.0.0.1;
					port=3307;
					dbname=mzp;
					charset=utf8',
				   'reader',
				   '1234');
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
	print "ERROR: Could not connect to database. " . $e->getMessage();
	die();
}

?>