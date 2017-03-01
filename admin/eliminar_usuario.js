$(document).ready(function(){
	$(".eliminar").click(function(){

		$(this).parent('td').parent('tr').remove();
		$.post('./elimina.php',{
			Caso:'Eliminar',
			Id:$(this).attr('data-id')

		},function(e){
			alert(e);
		});
		
	});
});