<?php

require_once("../def/function.php");

$numero_pergunta = $_GET["numero_pergunta"];

$connection = connection();
$query = implode(" ", [
    "SELECT *",
    "FROM pergunta",
    "ORDER BY RAND(id_pergunta)",
    "LIMIT 1",
    "OFFSET {$numero_pergunta} "
]);
//echo $query;

$res = $connection -> query($query);
$pergunta = $res -> fetch(2);

$query = implode(" ", [
    "SELECT texto, tipo",
    "FROM resposta",
    "WHERE id_pergunta = {$pergunta["id_pergunta"]}",
    "ORDER BY RAND () "
]);

$res = $connection -> query($query);
$respostas = $res -> fetchAll(2);

$jsonFinal = [
    "pergunta" => $pergunta["texto"],
    "dica" => $pergunta["dica"],
    "respostas" => $respostas
];

echo json_encode($jsonFinal);