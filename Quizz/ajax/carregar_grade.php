<?php

require_once("../def/function.php");

$connection = connection();

$query = "SELECT * FROM placar ORDER BY pontos desc LIMIT 15";

$res = $connection->query($query);
$arr = $res->fetchAll(2);

$tbody = "";
foreach ($arr as $row) {
    $criado_em = date("d/m/Y H:i:s", strtotime($row["criado_em"]));

    $tbody .= "<tr>";
    $tbody .= "  <td style='text-align: center'>{$row["nome"]}</td>";
    $tbody .= "  <td style='text-align: center'>{$row["pontos"]}</td>";
    $tbody .= "  <td style='text-align: center'>{$row["certas"]}</td>";
    $tbody .= "  <td style='text-align: center'>{$criado_em}</td>";
    $tbody .= "</tr>";
}

echo json_encode(array("tbody" => $tbody));
