<?php

require_once("../def/function.php");

$nome = $_GET["nome"];
$pontos = $_GET["pontos"];
$acertos = $_GET["acertos"];

$criado_em = date("Y-m-d H:i:s");

$connection = connection();

$query = "INSERT INTO placar (nome, pontos, certas, criado_em) VALUES ('{$nome}', '{$pontos}', '{$acertos}', '{$criado_em}')";
if(!$connection->query($query)){
    $erro = $connection->errorInfo();
    var_dump($erro[2]);
}

echo json_encode([]);