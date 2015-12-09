$(document).ready(function(){
	$("ul.sidebar-menu h3").click(function(){
		//slide up all the link lists
		$("ul.sidebar-menu li h3").removeClass("active");
		$("ul.sidebar-menu ul").slideUp();

		//slide down the link list below the h3 clicked - only if its closed
		if(!$(this).next().is(":visible")) {
			$(this).addClass("active");
			$(this).next().slideDown();
		}
	})
})