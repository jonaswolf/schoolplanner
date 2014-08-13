<?php
//Config fuer MySQL---------------------------------------------------------------------------
define('MYSQL_HOST',		'localhost');
define('MYSQL_USER',		'schoolplanner');
define('MYSQL_PW',		'schoolplanner');
define('MYSQL_PASS',		MYSQL_PW);
define('MYSQL_PREFIX',		'school_');
define('MYSQL_DB',		'schoolplanner');
$dbcon = mysql_connect( MYSQL_HOST, MYSQL_USER, MYSQL_PW );
$link = mysql_select_db( MYSQL_DB, $dbcon );
?>