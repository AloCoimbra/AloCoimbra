function toggleAluguer(id) {
    var menu = $('#Aluguer' + id);

    if ($('#Toggle' + id).attr('value') === 'Adicionar Outro')
       menu.after(menu.clone());
    else if(confirm('Tem certeza que deseja remover este registo?'))
        menu.remove(0);

    updateAluguers();
}

function updateAluguers() {
    var id = 0;
    var menus = $('div[id^=Aluguer]');
    var last = menus.size() - 1;

    menus.each(function() {
        $(this).attr('id', 'Aluguer'+id);
        $('select[name^=Alojamento]', $(this)).attr('name','Alojamento'+id);
        $('select[name^=Qualidade]', $(this)).attr('name','Qualidade'+id);
        $('input[name^=Preco]', $(this)).attr('name','Preco'+id);
        $('input[id^=Toggle]', $(this))
            .attr('onClick','toggleAluguer('+id+');')
            .attr('value', id != last && 'Remover' || 'Adicionar Outro')
            .attr('id', 'Toggle'+id);

        id++;
    });
}


function isNumberKey(e) {
    var c = (e.which) ? e.which : event.keyCode;
    return !(c > 31 && (c < 48 || c > 57));
}

$(function() {
    $(".data").datepicker({ dateFormat: 'yy-mm-dd' });
    updateAluguers();
});