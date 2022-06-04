var hist1 = [8000];
var hist2 = [8000];

async function dano(params) {
    var dano = 0;
    var valor = Number(ipt_valor.value);
    var pv1 = hist1[hist1.length-1];
    var pv2 = hist2[hist2.length-1];

    if (sel_player.value == '1') {

        for (let logic = pv1; logic > pv1 - valor; logic--) {
    
            await new Promise(obtenha => {
                dano++
                NumeroP1.innerHTML = `${pv1 - dano}`;
                setTimeout(obtenha, 1 / 1000)
            })
        }
        hist1.push(pv1 - dano);
        pv1 = hist1[hist1.length - 1];
        atualizar();
        parametro();

    }
    else if (sel_player.value == '2') {

        for (let logic = pv1; logic > pv1 - valor; logic--) {

            await new Promise(obtenha => {
                dano++
                NumeroP2.innerHTML = `${pv2 - dano}`;
                setTimeout(obtenha, 1 / 1000)
            })
        }
        hist2.push(pv2 - dano);
        pv2 = hist2[hist2.length - 1];
        atualizar();
        parametro();

    }


}
async function cura() {
    var cura = 0;
    var valor = Number(ipt_valor.value);
    var pv1 = hist1[hist1.length-1];
    var pv2 = hist2[hist2.length-1];

    if (sel_player.value == '1') {
        for (let logic = pv1; logic < pv1 + valor; logic++) {

            await new Promise(obtenha => {
                cura++
                NumeroP1.innerHTML = `${pv1 + cura}`;
                setTimeout(obtenha, 1 / 1000)
            })
        }
        hist1.push(pv1 + cura);
        pv1 = hist1[hist1.length - 1];
        atualizar();
        parametro();

    }
    else if (sel_player.value == '2') {
        for (let logic = pv1; logic < pv1 + valor; logic++) {

            await new Promise(obtenha => {
                cura++
                NumeroP2.innerHTML = `${pv2 + cura}`;
                setTimeout(obtenha, 1 / 1000)
            })
        }
        hist2.push(pv2 + cura);
        pv2 = hist2[hist2.length - 1];
        atualizar();
        parametro();

    }


}
