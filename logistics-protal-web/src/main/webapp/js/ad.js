$(document).ready(function(){
	function fade(){
		$(".ad-div").fadeOut(500); 
	}
	setInterval(fade,15000);
	
	$(".delete").click(function(){
		$(".ad-div").hide();
	});
});
