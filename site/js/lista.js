$(document).ready(function() {
	$('.tooool').tooltip();
    $('.slider').slider({
        min: 0,
        max: 1000,
        step: 5,
        value: [250,750]
    });

    canQuery = true;
    set = 0;

    window.onscroll = function(e) {
    	if (canQuery && (window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
            canQuery = false;
            set++;

        	$.ajax('/entradas/' + set).done(function(data) {
			  	$('.right').append(data);
                canQuery = data != '';
			});
    	}
	};
});