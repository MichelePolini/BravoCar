<?php
    session_start();
    $servername="localhost";
    $username="quintaa";
    $password="NB7U@91A";
    try{
        //Connessione con il server
        $conn=new PDO("mysql:host=$servername; dbname=quintaa_carsharing",$username,$password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        if(isset($_POST["Nome"]) && isset($_POST["Email"]) && isset($_POST["Psw"]) && isset($_POST["CVV"]) && isset($_POST["NumeroCarta"]) && isset($_POST["Cognome"]))
        {
            $pass=password_hash($_POST["Psw"],PASSWORD_DEFAULT);
            $cvv=password_hash($_POST["CVV"],PASSWORD_DEFAULT);
            $stm = $conn->prepare("INSERT INTO utente(Nome, Cognome, Email, NumeroCarta, Psw, CVV) VALUES(:Nome, :Cognome, :Email, :NumeroCarta, :Psw, :CVV)");
            $stm->bindValue(":Nome",$_POST["Nome"]);
            $stm->bindValue(":Cognome",$_POST["Cognome"]);
            $stm->bindValue(":Email",$_POST["Email"]);
            $stm->bindValue(":Psw", $pass);
            $stm->bindValue(":NumeroCarta",$_POST["NumeroCarta"]);
            $stm->bindValue(":CVV", $cvv);
            $result = $stm->execute();
            if($result)
            {
                echo "<h2>Registrazione completata</h2>";
            }
        }  
    }
    catch(PDOException $e){
        echo"$e";
    }

?>
