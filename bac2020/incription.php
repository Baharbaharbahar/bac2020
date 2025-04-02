<?php
require("config.php");
$tel=$_POST["tel"];
$nom=$_POST["nom"];
$prenom=$_POST["prenom"];
$adresse=$_POST["adresse"];
$mdp=$_POST["mdp"];
// $cmdp=$_POST["cmdp"];
$sql="INSERT into Client(Tel,Nom,Prenom,Adresse,MotPass) values('$tel','$nom','$prenom','$adresse','$mdp');";
$res=mysqli_query($conn,$sql);
if (mysqli_affected_rows($conn)>0){
    echo ("<h1> Inscription effectuée avec succès</h1>");
}else {
    $sql="SELECT Nom,Prenom,Tel from Client where Nom='$nom' and Prenom='$prenom' and Tel='$tel' ";
    $res=mysqli_query($conn,$sql);
    if (mysqli_num_rows($res)!=0){
        echo ("<h1>Client déjà inscrit !</h1>");
        
    }else{
        $sql="SELECT * from Client where Tel='$tel'";
        $res=mysqli_query($conn,$sql);
        if (mysqli_num_rows($res)!=0){
            echo ("<h1>Erreur : Tél, Nom ou Prénom erroné !</h1>");
        }
    }
}







?>
