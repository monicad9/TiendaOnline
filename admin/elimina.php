<?php 
	include "../conexion.php";
	if($_POST['Caso']=="Eliminar"){
		mysqli_query($con,"delete from usuarios where Id=".$_POST['Id']);
		echo 'El usuario se ha eliminado';
	}

?>