<?php
$pizza=$_POST["pizza"];
$quantity=$_POST["quantity"];
$tel=$_POST["tel"];
$motdepasse=$_POST["motdepasse"];
mysql_connect("localhost","root","");
mysql_select_db("bdbac2020") or die( "Erreur de selection de la base de donnees.");
$req="SELECT*FROM commande where tel='$tel' and motdepasse='$motdepasse'";
$res=mysql_query($req);
if (mysql_num_rows($req)==0)
   echo "N° Tél ou mot de passe erroné !";
else{
    $req1="INSERT INTO commande VALUES ('$tel, '$pizza','$quantity','$motdepasse')";
    $res1=mysql_query($req1);
    if(mysql_affected_rows()==1){
        echo "Opération réussie";
    }
}


?>