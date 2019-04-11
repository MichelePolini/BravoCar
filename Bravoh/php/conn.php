<?php
    $servername="localhost";
    $username="quintaa";
    $password="NB7U@91A";
    //Connessione con il server
    $conn=new PDO("mysql:host=$servername; dbname=quintaa_carsharing",$username,$password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $secret='123';
?>