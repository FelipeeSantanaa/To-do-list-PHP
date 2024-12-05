<?php

$hostname = 'localhost';
$database = 'to-do-list';
$username = 'postgres';
$password = '20050703';
$charset = 'utf8';

$dsn = "pgsql:host=$hostname;dbname=$database";

$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];

try {
    $pdo = new PDO($dsn, $username, $password, $options);
    $pdo->exec("SET NAMES $charset");
} catch (PDOException $e) {
    echo "Erro: " . $e->getMessage();
}

?>
