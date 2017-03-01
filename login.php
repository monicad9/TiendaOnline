<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Panel de Administración</title>
	<link rel="stylesheet" type="text/css" href="./css/estilos.css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="./js/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
</head>
<body>
	<nav>
	    <div class="nav-wrapper">
	      	<a href="./index.php" class="brand-logo"><img id="logo" src="./imagenes/logo.png">Electronic Store</a>
	     	<ul id="nav-mobile" class="right hide-on-med-and-down">
	        	<li><a href="./index.php">Inicio</a></li>
	        	<li class="active"><a href="#">Login</a></li>
				<li><a href="./register.php">Register</a></li>	
	    </div>
	 </nav>

<section>

	<form id="formulario" method="post" action="./login/verificar.php">
		<?php 
		if(isset($_GET['error'])){
			echo '<center>Datos No Validos</center>';
		}


		?>

		<label for="usuario">Usuario</label><br>
		<input type="text" id="usuario" name="Usuario" placeholder="usuario" ><br>
		<label for="password">Password</label><br>
		<input type="password" id="password" name="Password" placeholder="password" ><br>
		<input type="submit" name="aceptar" value="Aceptar" class="aceptar">
	</form>

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