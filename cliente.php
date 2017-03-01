<?php
session_start();
	include "conexion.php";
	if(isset($_SESSION['Usuario'])){

	}else{
		header("Location: ./index.php?Error=Acceso denegado");
	}
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Panel de Administración</title>
	<link rel="stylesheet" type="text/css" href="./css/estilos.css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"  src="./js/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
</head>
<body>


	<nav>
	    <div class="nav-wrapper">
	      	<a href="./index.php" class="brand-logo"><img id="logo" src="./imagenes/logo.png">Electronic Store</a>
	     	<ul id="nav-mobile" class="right hide-on-med-and-down">
	        	<li><a href="./index.php">Inicio</a></li>
	    		<li><a href="./login/cerrar.php">Salir</a></li>
	        	<li><a href="./carritodecompras.php" title="ver carrito de compras"><img id="carrito" src="./imagenes/carrito.png"></a></li>
	      	</ul>
	    </div>
	 </nav>

<section>

	<center><h1>Bienvenido a Electronic Store</h1></center>
	<center><h3>¡Empieza tu compra!</h3></center>

	<center><a href="./">Ver catalogo</a></center>
	</section>
	
	<footer class="page-footer">
		<div class="footer-copyright">
			<div class="container">
				© 2017  Mónica Daza Aguilera 2ºDAW -- Desarrollo Web Entorno Servidor
			</div>
		</div>
	</footer>
</body>
</html>