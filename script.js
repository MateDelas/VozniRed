$(document).ready(function () {
	loadList('#form-search-polaziste', 'stanica', 'naziv');
	loadList('#form-search-odrediste', 'stanica', 'naziv');
	
	$('#form-search').submit(function (e) {
		var polaziste = $(this).find('select[name*="polaziste"]').val();
		var odrediste = $(this).find('select[name*="odrediste"]').val();
		
		var target = 'php/get/list.php?list=poveznica&id_polaziste=' + polaziste
					+'&id_odrediste=' + odrediste;
		
		$('#search-result').empty();
		
		$.getJSON(target, {}, function (result) {
			$('#search-result').append(
				'<table>' +
				'<thead>' +
				'<tr>' +
				'<td>Polaziste</td>' +
				'<td>Polazak</td>' +
				'<td>Odrediste</td>' +
				'<td>Dolazak</td>' +
				'<td>Linija</td>' +
				'<tr>' +
				'</thead>' +
				'</table>'
			);
			var numRow = 1;
			$.each(result, function (key, value) {
				var classEvenOdd;
				if (numRow % 2 === 0) {
					classEvenOdd = ' class="even"';
				} else {
					classEvenOdd = ' class="odd"';
				}
				
				$('#search-result table').append('<tr id=row-' + numRow + classEvenOdd + '></tr>');
				$.each(this, function (key, value) {
					switch (key) {
						case 'id_polaziste':
							if ($('#form-search-polaziste').val() == value) {
								$('tr[id="row-' + numRow + '"]')
									.append($('<td id="polaziste-' + numRow + '" class="marked"></td>').html(value));
							} else {
								$('tr[id="row-' + numRow + '"]')
									.append($('<td id="polaziste-' + numRow + '"></td>').html(value));
							}
							find('stanica', value, function(data) {
								$('td[id*="polaziste"]').each(function (index, item) {
									if ($(this).html() == value) {
										$(this).html(data[0]['naziv']);
									}
								});
							});
							break;
						
						case 'polazak':
							$('tr[id="row-' + numRow + '"]')
								.append($('<td id="polazak-' + numRow + '"></td>').html(value.substring(0, 5)));
							break;
						
						case 'id_odrediste':
							if ($('#form-search-odrediste').val() == value) {
								$('tr[id="row-' + numRow + '"]')
									.append($('<td id="odrediste-' + numRow + '" class="marked"></td>').html(value));
							} else {
								$('tr[id="row-' + numRow + '"]')
									.append($('<td id="odrediste-' + numRow + '"></td>').html(value));
							}
							find('stanica', value, function(data) {
								$('td[id*="odrediste"]').each(function (index, item) {
									if ($(this).html() == value) {
										$(this).html(data[0]['naziv']);
									}
								});
							});
							break;
						
						case 'dolazak':
							$('tr[id="row-' + numRow + '"]')
								.append($('<td id="dolazak-' + numRow + '"></td>').html(value.substring(0, 5)));
							break;
						
						case 'id_linija':
							if ((numRow > 2) && ($('td[id="linija-' + (numRow - 1) + '"]').html() != value)) {
								$('tr[id*="row-' + numRow + '"]')
									.before('<tr class="break"><td colspan="5" class="decorated"><span>Nova linija</span></td></tr>');
							}							
							$('tr[id="row-' + numRow + '"]')
								.append($('<td id="linija-' + numRow + '" onclick="showPopup(' + value + ', \'#row-' + numRow + '\');"></td>').html(value));
							
							find('linija', value, function(data) {
								$('td[id*="linija"]').each(function (index, item) {
									if ($(this).html() == value) {
										$(this).html(data[0]['identifikator']);
									}
								});
							});
							break;
						
						default:
							break;
					}
				});
				numRow = numRow + 1;
			});
		});
		
		e.preventDefault();
	});
});