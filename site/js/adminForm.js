var cont = 1; 

function addAluguer(aux) {
    if(aux==0) aux='';

    if(document.getElementById("addButton"+aux).value === 'Adicionar outro'){
        var div = document.createElement('div');
        div.setAttribute('class', 'menu');
        div.setAttribute('id','aluguer'+cont);
		div.innerHTML = "<div class=\"right\"><p><select name=\"Tipo"+cont+"\" size=\"1\"><option selected value=\"Individual\">Individual</option><option value=\"Duplo\">Duplo</option></select></p><p><select name=\"Qualidade"+cont+"\" size=\"1\"><option selected value=\"0\">Razoável</option><option value=\"1\">Bom</option><option value=\"2\">Muito Bom</option><option value=\"3\">Excelente</option></select></p><p><input type=\"number\" name=\"Preco"+cont+"\" value=\"150\" min=\"0\" step=\"1\" onkeypress=\"return isNumberKey(event)\"></p></div><div class=\"left\"><p>Tipo: </p><p>Qualidade: </p><p>Preço: </p></div><center><input type='button' id='addButton"+cont+"' value='Adicionar outro' onclick='addAluguer("+cont+");'></center>";
        var element = document.getElementById('submit');
        document.getElementById("addButton"+aux).value = 'Remover';
        element.parentNode.insertBefore(div, element);
        cont++;
    }
    else if(confirm("Tem certeza que deseja remover este registo?"))
        document.getElementById("aluguer"+aux).remove(0);
}

function isNumberKey(e) {
    var c = (e.which) ? e.which : event.keyCode;
    return !(c > 31 && (c < 48 || c > 57));
}

$(function() {
    $(".data").datepicker();
});