<?php

$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'admin_kominfo';
$port = '3306';

$conn = mysqli_connect(
    $hostname,
    $username,
    $password,
    $database,
    $port
);