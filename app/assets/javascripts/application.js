$( document ).ready(function() {

$(".locbutton").on("click", function(){
	$(".loclist").toggle();
	if($('.loclist').is(':visible') == true) {
		$(".locbutton").html("-")
	}
	if($('.loclist').is(':visible') == false) {
			$(".locbutton").html("+")
	    // Code
	}
	});


});

