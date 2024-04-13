<?php 
// $con = mysqli_connect('localhost', 'root', '', 'soulmate');

define('DB_HOST', 'us-cluster-east-01.k8s.cleardb.net');
define('DB_USER', 'be713343c1fb18');
define('DB_PASSWORD', 'ed2b45a9'); 
define('DB_NAME', 'heroku_15f348bd5e93f67');


$con = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
} 
?>


