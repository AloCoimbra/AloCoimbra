$(function() {
	$('input, select').each(function(i, input) {
        var v = formData[input.name];

        if (v) {
            input.value = v;
            input.checked = v;
        }
    });
 })