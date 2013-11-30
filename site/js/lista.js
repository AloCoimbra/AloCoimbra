$(document).ready(function() {
    var min = post['MinPreco'];
    var max = post['MaxPreco'];

    $('input, select').each(function(i, input) {
        var v = post[input.name];

        if (v) {
            input.value = v;
            input.checked = v;
        }
    });

    $('.tooool').tooltip();
    $('.slider').slider({
        value: [min ? min:150, max ? max:750],
        max: 2000,
        step: 5,
        min: 0,
    });

    var set = 0;
    var canQuery = true;
    var values = $('form').serialize();

    window.onscroll = function(e) {
    	if (canQuery && $(window).scrollTop() + $(window).height() + 80 >= $(document).height()) {
            canQuery = false;
            set++;

            $.ajax({
                type: 'POST',
                url: '/entradas/',
                data: 'Set=' + set + '&' + values,
                
                success: function(data) {
                    $('.list').append(data);
                    canQuery = data != '';
                 }
            });
        }
	};
});