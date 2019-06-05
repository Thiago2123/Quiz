<?php

function connection(){
    return new PDO("pgsql:host=localhost dbname=Quiz user=postgres password=postgres");
}

function pre($var){
    print("<pre>");
    print_r($var);
    print("</pre>");
}