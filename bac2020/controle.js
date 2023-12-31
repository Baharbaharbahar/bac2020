function verif1(){
    const nom=document.getElementById("nom").value;
    if(!alpha(nom)||nom.length<=3){
        alert ("Chaîne alphabétique de taille minimale égale à 3");
        return false;
    }
    const prenom=document.getElementById("prenom").value;
    if(!alpha(prenom)||prenom.length<=3){
        alert ("Chaîne alphabétique de taille minimale égale à 3!!!!");
        return false;
    }
    const tel=document.getElementById("tel").value;
    if(isNaN(tel)||tel.length!=8 || tel[0]<1 ){
        alert ( "Numéro de téléphone invalide, saisissez un numéro de 8 chiffres ");
        return false;
    }
    const adresse=document.getElementById("adresse").value;
    if(!alpha(adresse)||adresse.length!=10){
        alert ("Adresse non valide!!!");
        return false;
    }
    const motdepasse=document.getElementById("motdepasse").value;
    if(!alpha(motdepasse)||motdepasse.length!=" "){
        alert ("Mot de passe doit contenir au moins une majuscule et une minuscule ,et comporter au moins 6 ");
        return false;
    }
    const cdmddp=document.getElementById("cdmddp").value;
    if(cdmddp !=motdepasse){
        alert ("Mot de passe et confirmation ne correspondent pas!");
        return false;
    }
}
function alpha(ch){
    for(let i=0;i<ch.length;i++){
        if(ch[i]<"A" && ch[i]>"Z"&ch[i]!=""){
            test=false;
        }
        return true;
    }
}
function num(ch){
    for(let i=0;i<ch.length;i++){
        if(ch[i]<"0" && ch[i]>"9"&ch[i]!=""){
            test=false;
        }
        return true;
    }
}
function verif2(){
    const pizza=document.getElementById("pizza").selectedIndex;
    if(pizza==0){
        alert("Vous n'avez pas choisi la pizza");
        return false;
    }
    const quantity=document.getElementById("quantity").value;
    if(Number(quantity)<1||Number(quantity)>5){
        alert("La quantité doit être comprise entre 1 et 5");
        return false;
    }
    const tel=document.getElementById("tel").value;
    if(isNaN(tel)||tel.length!=8 || tel[0]<1 ){
        alert ( "Numéro de téléphone invalide, saisissez un numéro de 8 chiffres ");
        return false;
    }
    const motdepasse=document.getElementById("motdepasse").value;
    if(isNaN(motdepasse)||motdepasse.length!=6 || motdepasse[i]!=" "){
        alert("Le mot de passe doit contenir que des lettres et des espaces");
        return false;
    }

}














// function annuler {
//     Document.getElementById("email")
//     Document.getElementById("password")
//     Document.getElementById("genre"). selectIndex
//     Document.getElementById("r1")
//     Document.getElementById("r2")
//     Document.getElementById("r3")
// }