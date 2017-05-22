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

$(".credentialsbutton").on("click", function(){
	$(".credentialslist").toggle();
	if($('.credentialslist').is(':visible') == true) {
		$(".credentialsbutton").html("-")
	}
	if($('.credentialslist').is(':visible') == false) {
			$(".credentialsbutton").html("+")
	    // Code
	}
	});

$(".languagesbutton").on("click", function(){
	$(".languageslist").toggle();
	if($('.languageslist').is(':visible') == true) {
		$(".languagesbutton").html("-")
	}
	if($('.languageslist').is(':visible') == false) {
			$(".languagesbutton").html("+")
	    // Code
	}
	});

$(".agespecialtybutton").on("click", function(){
	$(".agespecialtylist").toggle();
	if($('.agespecialtylist').is(':visible') == true) {
		$(".agespecialtybutton").html("-")
	}
	if($('.agespecialtylist').is(':visible') == false) {
			$(".agespecialtybutton").html("+")
	    // Code
	}
	});

$(".acceptedinsurancebutton").on("click", function(){
	$(".acceptedinsurancelist").toggle();
	if($('.acceptedinsurancelist').is(':visible') == true) {
		$(".acceptedinsurancebutton").html("-")
	}
	if($('.acceptedinsurancelist').is(':visible') == false) {
			$(".acceptedinsurancebutton").html("+")
	    // Code
	}
	});

$(".specialtyareasbutton").on("click", function(){
	$(".specialtyareaslist").toggle();
	if($('.specialtyareaslist').is(':visible') == true) {
		$(".specialtyareasbutton").html("-")
	}
	if($('.specialtyareaslist').is(':visible') == false) {
			$(".specialtyareasbutton").html("+")
	    // Code
	}
	});

$(".treatmentmodalitybutton").on("click", function(){
	$(".treatmentmodalitylist").toggle();
	if($('.treatmentmodalitylist').is(':visible') == true) {
		$(".treatmentmodalitybutton").html("-")
	}
	if($('.treatmentmodalitylist').is(':visible') == false) {
			$(".treatmentmodalitybutton").html("+")
	    // Code
	}
	});

// $('.phonenumber').on("click", function(e){
// 	e.preventDefault();
// 	var $link = $(event.target)
// 	var url = $(event.target).attr('action')
// 	var type = "Get"

// 	$.ajax({
// 		url: url,
// 		contect: this
// 	})
// 	.done(function(response){
// 		confirm("The Phone Number is" + response);
// 	})
// })

});

