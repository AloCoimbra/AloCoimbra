function updateForm(data) {
	$('input, select').each(function(i, input) {
        var v = data[input.name];

        if (v) {
            input.value = v;
            input.checked = v;
        }
    });
 }