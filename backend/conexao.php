<?php

$servername = "mysql-connect-db";
$username = "root";
$password = "Senha123";
$database = "meuBanco";

// Criar conexão


$link = new mysqli($servername, $username, $password, $database);

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

?>