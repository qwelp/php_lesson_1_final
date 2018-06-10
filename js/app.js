$(function () {
	form.init();
});

var form = (function () {

	var set = function (el) {
		var form = el;

		$.ajax({
			url: 'ajax.php',
			method: 'POST',
			//dataType: 'json',
			data: {
				input: form.serialize()
			}
		}).done(function(data) {
			// var jsoned = JSON.parse(data);
			/*var html = 'email: ' + data.email + ';name: ' + data.name;
			$('#result').html(html);*/

			console.log(data);
		});
	};

	return {
		init : function () {
			$('#order-form').on('submit', function(e) {
				set($(this));
				return false;
			});
		}
	}
})();