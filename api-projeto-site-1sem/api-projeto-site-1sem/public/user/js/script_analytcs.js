function parametro() {
    var comparar1 = Number(hist1[hist1.length-1]);
    var comparar2 = Number(hist2[hist2.length-1]);

    if (sel_player.value=='1') {

        if (comparar1>8000) {
            status_p1.innerHTML = `<span style="color: blue;">Esqueça Tudo</span>`
        }
        else if (comparar1<7000) {
            status_p1.innerHTML = `<span style="color: #39ff14;">Tranquilo</span>`
        }
        else if (comparar1<4000) {
            status_p1.innerHTML = `<span style="color: yellow;">Sob Controle</span>`
        }
        else if (comparar1<2000) {
            status_p1.innerHTML = `<span style="color: orange;">Cuidado</span>`
        }
        else if (comparar1<500) {
            status_p1.innerHTML = `<span style="color: red;">Por um Fio</span>`
        }
    } 
    else if(sel_player.value=='2'){
        if (comparar2>8000) {
            status_p2.innerHTML = `<span style="color: blue;">Esqueça Tudo</span>`
        }
        else if (comparar2<7000) {
            status_p2.innerHTML = `<span style="color: #39ff14;">Tranquilo</span>`
        }
        else if (comparar2<4000) {
            status_p2.innerHTML = `<span style="color: yellow;">Sob Controle</span>`
        }
        else if (comparar2<2000) {
            status_p2.innerHTML = `<span style="color: orange;">Cuidado</span>`
        }
        else if (comparar2<500) {
            status_p2.innerHTML = `<span style="color: red;">Por um Fio</span>`
        }

    }
}