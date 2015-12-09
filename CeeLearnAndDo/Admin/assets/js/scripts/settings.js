$(document).ready(function(){
	//Tooltip
	$('[data-toggle="tooltip"]').tooltip();

	//Summernote
	$(document).ready(function(){
		$('#summernote').summernote();
	});
			
	$('#summernote').summernote({
		height: 321,                 // set editor height
				
		minHeight: null,             // set minimum height of editor
		maxHeight: null,             // set maximum height of editor
				
		focus: false,                 // set focus to editable area after initializing summernote
	});
});