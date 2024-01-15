<?php


try{

    $dsn = 'mysql:host=localhost;dbname=qcm';
    
    $username = 'root';
    $password = ''; 
    
    $database = new PDO($dsn, $username, $password);
}

catch(Exception $message){

    echo "probleme <br>". $message;
}