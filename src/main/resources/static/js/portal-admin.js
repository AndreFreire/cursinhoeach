$(document).ready(function() {
	$('#tabs li').click(function() {
		var clickTarget = $(this).attr('data-target');
		$('.tab-target').removeClass('targeted');
		$('#' + clickTarget).addClass("targeted");
		$('#tabs li').removeClass('active');
		$(this).addClass('active')
	});

	
	$('#select-tipo').change(function(){
		var selectedValue = $("#select-tipo option:selected").val();
		if(selectedValue == 1){
			$('#disciplina').removeClass('desactivate');
		}else{
			$('#disciplina').addClass('desactivate');
		}
	});

});


