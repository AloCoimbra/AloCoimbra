$(document).ready(function() {
	$('.tooool').tooltip();
    $('.slider').slider({
        min: 0,
        max: 2000,
        step: 5,
        value: [200,750]
    });

    canQuery = true;
    set = 0;

    window.onscroll = function(e) {
        console.log("yo");
        console.log($(window).scrollTop() + $(window).height(),  $(document).height());
    	if (canQuery && $(window).scrollTop() + $(window).height() + 80 >= $(document).height()) {
            canQuery = false;
            set++;

        	$.ajax('/entradas/' + set).done(function(data) {
			  	$('.right').append(data);
                canQuery = data != '';
			});
    	}
	};
});