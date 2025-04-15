function alpha(ch) {
    ch = ch.toUpperCase();
    for (let i = 0; i < ch.length; i++) {
        if (ch[i] < "A" || ch[i] > "Z" && ch[i] < "a" || ch[i] > "z") {
            return false;
        }
    } return true;
}
function Verif1() {
    let nom = document.getElementById("nom").value;
    if (nom.length < 3 || !alpha(nom)) {
        alert("Nom invalide");
        return false;
    }
    let prenom = document.getElementById("prenom").value;
    if (prenom.length < 3 || !alpha(prenom)) {
        alert("Prenom invalide");
        return false;
    }
    let tel = document.getElementById("tel").value;
    if (tel.length != 8||isNaN(tel)|| Number(tel[0])<1) {
        alert("Tel invalide");
        return false;
    }
    let mdp = document.getElementById("mdp").value;
    if (mdp.length != 6||isNaN(mdp) && mdp[i]!=" ") {
        alert("Mot de passe  invalide");
        return false;
    }
    let cmdp = document.getElementById("cmdp").value;
    if (mdp!=cmdp) {
        alert("comfirmation du Mot de passe  invalide");
        return false;
    }
}
function Verif2(){
    let pizza=document.getElementById("pizza").selectedIndex;
    if (pizza==0){
        alert ("pizza inavalide");
        return false;
    }
    let quantity=document.getElementById("quantity").value;
    if (Number(quantity)<1 || Number(quantity)>5){
        alert ("quantity inavalide");
        return false;
    }
    let tel = document.getElementById("tel").value;
    if (tel.length != 8||isNaN(tel)|| Number(tel[0])<1) {
        alert("Tel invalide");
        return false;
    }
    let mdp = document.getElementById("mdp").value;
    if (mdp.length != 6||isNaN(mdp) && mdp[i]!=" ") {
        alert("Mot de passe  invalide");
        return false;
    }
}