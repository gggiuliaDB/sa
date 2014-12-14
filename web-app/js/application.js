if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}
/*
var $ul = $("<ul>");
$(".pagination").children().each(function()
{
    var $li = $("<li>").append($(this));
    $ul.append($li);
});
$(".pagination").append($ul);*/