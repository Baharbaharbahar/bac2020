<?php
$tel=$_POST["tel"];
$nom=$_POST["nom"];
$prenom=$_POST["prenom"];
$adresse=$_POST["adresse"];
$matdepasse=$_POST["motdepasse"];
mysql_connect("localhost","root","");
mysql_select_db("bdbac2020");
$sql="insert into client values('".$tel."','".$nom."','".$prenom."','".$adresse."','".$motdepasse."';";
$res=mysql_query($req);
if(mysql_affected_rows()==1){
    echo "Inscription effectuée avec succès";
    }else{
        $req1="SELECT * FROM client where( tel='$tel')and (nom='$nom') and (prenom='$prenom')";
        $res1=mysql_query($req1);
        if(mysql_num_rows($req1)==1){
            echo "Client déjà inscrit !";
        }
        else{
            echo "Erreur : Tél, Nom ou Prénom erroné !";
        }
}
?>