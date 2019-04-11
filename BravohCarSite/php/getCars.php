<?php
    session_start();
    $servername="localhost";
    $username="quintaa";
    $password="NB7U@91A";
    try{
        //Connessione con il server
        $conn = new PDO("mysql:host=$servername; dbname=quintaa_carsharing",$username,$password);
        $conn -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $smt = $conn->prepare('SELECT * FROM Auto WHERE Libera = "TRUE"');
        $smt -> execute();
        $rows = $smt -> fetchAll();
        echo json_encode($rows);
    }
    catch(PDOException $e){
        echo $e;
    }

?>