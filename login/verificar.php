<?php
session_start();
include "../conexion.php";
$re=mysqli_query($con,"select * from usuarios where Usuario='".$_POST['Usuario']."' AND Password='".$_POST['Password']."'")	or die(mysqli_error($con));

$reAD=mysqli_query($con,"select * from administradores where Usuario='".$_POST['Usuario']."' AND Password='".$_POST['Password']."'")or die(mysqli_error($con));

	while ($f=mysqli_fetch_array($re)) {
		$arreglo[]=array('Nombre'=>$f['Nombre'],'Apellido'=>$f['Apellido']);
	}

	while($d=mysqli_fetch_array($reAD)){
		$admin[]=array('Nombre'=>$d['Nombre'], 'Password'=>$d['Password']);
	}

	if(isset($arreglo)){
		$_SESSION['Usuario']=$arreglo;
		header("Location: ../cliente.php");

	}

	else if(isset($admin)){
		$_SESSION['Usuario']=$admin;
		header("Location: ../admin/modificar.php");
	}

	else{
		header("Location: ../login.php?error=datos no validos");
	}
?>