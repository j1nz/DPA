$("#footer").hide();
$("#upbutton").hide();
$("#back-to-top").hide();

function showFooter() {
	$("#footer").show();
	$("#downbutton").hide();
	$("#upbutton").show();
	$("html, body").animate({
		scrollTop : $(document).height()
	}, 500);
}

function hideFooter() {
	$("#footer").hide();
	$("#downbutton").show();
	$("#upbutton").hide();
	$("html, body").animate({
		scrollTop : $(document).height()
	}, 500);
}

$(window).on('scroll', function(){
	if($(this).scrollTop() > 100) {
		$("#back-to-top").fadeIn();
	} else{
		$("#back-to-top").fadeOut();
	}
});

function backtotop() {
	$("html, body").animate({
		scrollTop : 0
	}, 500);
}