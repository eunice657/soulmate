<?php 
#$con = mysqli_connect('localhost', 'root', '', 'soulmate');
define('DB_HOST', 'us-cluster-east-01.k8s.cleardb.net');
define('DB_USER', 'b3fb18679545e3');
define('DB_PASSWORD', '3c5fd5a5'); 
define('DB_NAME', ' heroku_c334999d8e3c33c');


$con = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
} 
?>


