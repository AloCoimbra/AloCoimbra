$(document).ready(function() {
	$('.tooool').tooltip();
    $('.slider').slider({
        min: 0,
        max: 1000,
        step: 5,
        value: [250,750]
    });

    set = 1;
    window.onscroll = function(e) {
    	if (set && (window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
        	$.ajax('/entradas/' + set).done(function(data) {
        		if (data != '')
			  		$('.right').append(data);
			  	else
			  		set = 0;
			});

			set++;
    	}
	};
});