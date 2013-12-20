$(document).ready(function() {
    var min = formData['MinPreco'];
    var max = formData['MaxPreco'];
    
    $('.tooool').tooltip();
    $('.slider').slider({
        value: [min ? min:100, max ? max:750],
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