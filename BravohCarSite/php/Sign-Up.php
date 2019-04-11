<?php
    session_start();
    require_once('jwt.php');
    include "conn.php";
    try{

        $data=json_decode(file_get_contents('php://input'));
        if(isset($data))
        {
            $pass=password_hash($data->psw,PASSWORD_DEFAULT);
            $cvv=password_hash($data->cvv,PASSWORD_DEFAULT);
            $stm = $conn->prepare("INSERT INTO utente(Nome, Cognome, Email, NumeroCarta, Psw, CVV) VALUES(:Nome, :Cognome, :Email, :NumeroCarta, :Psw, :CVV)");
            $stm->bindValue(":Nome",$data->nome);
            $stm->bindValue(":Cognome",$data->cognome);
            $stm->bindValue(":Email",$data->email);
            $stm->bindValue(":Psw", $pass);
            $stm->bindValue(":NumeroCarta",$data->carta);
            $stm->bindValue(":CVV", $cvv);
            $usr->idCliente = $conn -> lastInsertId();
            $usr->nome = $data->nome;
            $usr->cognome =$data->cognome;
            $usr->email = $data->email;
            $jwt = JWT::encode($usr,$secret);
            $result = $stm->execute();
            echo json_encode($jwt);
            if($result)
            {
                echo "success";    
            }
            else{
                echo"fail";
            }
        }     
    }
    catch(PDOException $e){
        echo"$e";
    }

?>