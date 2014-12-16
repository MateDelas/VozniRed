function loadList(selectElement, target, attribute, selected) {
	var targetURL = 'php/get/list.php?list=';
	
	$(selectElement).empty();
	$.getJSON(targetURL + target, {}, function (data) {
		$.each(data, function (i, option) {
			if (selected === undefined) {
				$(selectElement)
				.append($('<option></option>')
				.val(option['id_stanica'])
				.html(option[attribute]));
			} else {
				$(selectElement)
				.append($('<option></option>')
				.val(option['id_stanica'])
				.html(option[attribute]));
				if (option['id_stanica'] == selected) {
					$(selectElement)
					.append($('<option selected="selected"></option>')
					.val(option['id_stanica'])
					.html(option[attribute]));
				}
			}
		});
	});
}

function find(target, id, callback) {
	$.getJSON('php/get/find.php?list=' + target + '&id=' + id, {}, function(data) {
		callback(data);
	});
}

function showPopup(id, element) {
	find('linija', id, function(data) {
		$('#dialog').html(data[0]['napomena']);
		$('#dialog').dialog({ position: { my: "bottom", at: "top", of: element } });
	});
}