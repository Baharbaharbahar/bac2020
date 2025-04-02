<?php
require("config.php");
$tel=$_POST["tel"];
$mdp=$_POST["mdp"];
$quantity=$_POST["quantity"];
$pizza=$_POST["pizza"];
$sql="SELECT * from Client where Tel='$tel' and MotPass='$mdp' ";
$res=mysqli_query($conn,$sql);
if (mysqli_num_rows($res)!=0){
    echo ("<h1>N° Tél ou mot de passe erroné !</h1>");
    
}else{
    $d= date("Y/m/d") ;
    $sql="INSERT into commande(IdPizza,Tel,DateCmd,QteCmd) values('$pizza',$tel,'$d','$quantity');";
    $res=mysqli_query($conn,$sql);
    if (mysqli_affected_rows($conn)>0){
        echo ("<h1> Opération réussie</h1>");
    }

}









?>
