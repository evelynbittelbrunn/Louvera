<?php

try{
    $pdo = new PDO('mysql:host=localhost;dbname=louvera', "root", "");
}catch(PDOException $e){
    echo "Error: ".$e->getMessage();
}

?>