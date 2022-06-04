function atualizar() {
    if (sel_player.value == '1') {
        regis1.innerHTML='';
        for (let logic = hist1.length-1; logic >= 0; logic--) {
            regis1.innerHTML+=`${hist1[logic]}<br>`
        }
    } 
    else if(sel_player.value == '2'){
        regis2.innerHTML='';
        for (let logic = hist2.length-1; logic >= 0; logic--) {
            regis2.innerHTML+=`${hist2[logic]}<br>`
        }
    }
}