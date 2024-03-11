<?php

require_once __DIR__ . './../vendor/autoload.php';

echo phpinfo();

$type_connection = "pgsql"; // mysql

$db_host = "db";
$port = "5432";
$db_name = "database";
$db_username = "root";
$db_pass = "root";

try {
    $connect = new PDO("$type_connection:host=$db_host;dbname=$db_name;port=$port", $db_username, $db_pass);
    $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
//    $result = $connect->query("SELECT count()id FROM orders LIMIT 2")->fetchAll();
//    var_dump($result);
} catch (PDOException $exception) {
    echo "Connection failed: " . $exception->getMessage();
    die('Error!');
}
