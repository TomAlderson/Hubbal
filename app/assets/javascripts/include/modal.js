

	$('a[data-toggle=modal]').on('click', function(){
		var url = $(this).data("url");
		var idString = $(this).data("id");
		if (idString)
		{
			$.get(url,{option:idString}, function(data) {
				var page = $(data);
				$('.modal-title').html(page.filter('#header').html());
				$('.modal-body').html(page.filter('#body').html());
				$('.modal-footer').html(page.filter('#footer').html());
				$('.script').html(page.find('script').html());
			}, 'html');
		}else{
			$.get(url, function(data) {
				var page = $(data);
				$('.modal-title').html(page.filter('#header').html());
				$('.modal-body').html(page.filter('#body').html());
				$('.modal-footer').html(page.filter('#footer').html());
				$('.script').html(page.find('script').html());
			}, 'html');
		}
	});
