    
<?php
    session_start();
    require_once('jwt.php');
    include "conn.php";
    try{
        $smt = $conn->prepare('SELECT * FROM Auto WHERE Libera = "TRUE"');
        $smt -> execute();
        $rows = $smt -> fetchAll();
        echo json_encode($rows);
    }
    catch(PDOException $e){
        echo $e;
    }
?>