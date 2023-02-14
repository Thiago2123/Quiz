<?php

function connection(){
    
    $host = "localhost";
    $user = "root";
    $pass = "";
    $dbname = "Quiz";
    $port = 3306;

    return new PDO("mysql:host=$host;port=$port;dbname=" . $dbname, $user, $pass);
}

function pre($var){
    print("<pre>");
    print_r($var);
    print("</pre>");
}