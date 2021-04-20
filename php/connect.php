<?php
error_reporting(E_ALL);

$host = 'mysql:host=localhost;debname=curl_storage;chartset=utf8';
$userName = 'root';
$passWord = 'poi98799';

$pdo = new PDO($host, $userName, $passWord);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>