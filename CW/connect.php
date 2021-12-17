<?php

$server="localhost";
$login="root";
$pass="";
$name_db="dhl_db";
$link= mysqli_connect($server,$login,$pass,$name_db);

if ($link == False)
{
    echo "dont conected";
}


?>

