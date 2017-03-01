<?php

	include ("../conexion.php");
	
	if (!empty($_POST) ){


		if(!isset($_POST['nombre']) &&  !isset($_POST['apellido']) && !isset($_POST['usuario'])) {

			header("Location: ../register.php");
		}

		else{

			if (!empty($_POST['nombre']) && !empty($_POST['apellido']) && !empty($_POST['usuario']) && !empty($_POST['password'])){

				$nombre=$_POST['nombre'];
				$apellido=$_POST['apellido'];
				$usuario=$_POST['usuario'];
				$password=$_POST['password'];

				$Sql="insert into usuarios (nombre,apellido,usuario,password) values(
						'".$nombre."',
						'".$apellido."',
						'".$usuario."',
						'".$password."')";
				mysqli_query($con,$Sql);
				header ("Location: ../cliente.php");
			}

			else{
				header("Location: ../register.php");
			}

	  	};

  	};
	
?>
