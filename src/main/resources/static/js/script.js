function toast() {
    // Get the snackbar DIV
    var x = document.getElementById("snackbar");

    // Add the "show" class to DIV
    x.className = "show";

    // After 3 seconds, remove the show class from DIV
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}

// permet de copier un div
function cloning(){
    var copie = $('#formulaire').clone();
    copie.appendTo('body');
}

// permet d'afficher un div
function affiche(val) {
    document.getElementById("endedornot").disabled=true;
    if(val==0)
        document.getElementsByClassName("actuel")[0].style.visibility="hidden"
    if(val==1)
        document.getElementsByClassName("actuel")[0].style.visibility="visible"
}

