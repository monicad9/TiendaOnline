<?php
	session_start();
	include "../conexion.php";
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
	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="./eliminar_usuario.js"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
</head>
<body>
	<nav>
	    <div class="nav-wrapper">
	      	<a href="../index.php" class="brand-logo"><img id="logo" src="../imagenes/logo.png">Electronic Store</a>
	     	<ul id="nav-mobile" class="right hide-on-med-and-down">
	        	<li><a href="../index.php">Inicio</a></li>
	        	<li><a href="#">Admin >></a></li>
	    		<li><a href="./agregarproducto.php" >Agregar productos</a></li>
	    		<li><a href="./modificar.php" >Modificar productos</a></li>
	    		<li class="active"><a href="#" >Eliminar usuarios</a></li>	
	    		<li><a href="../login/cerrar.php">Salir</a></li>
	      	</ul>
	    </div>
	 </nav>

	<section>
		
		<h1>Eliminar Usuarios</h1>
		<table width="100%">
			<tr>
				<td>Id</td>
				<td>Nombre</td>
				<td>Apellido</td>
				<td>Usuario</td>
				<td>Contraseña</td>

			</tr>
		<?php 
			$resultado=mysqli_query($con,"select * from usuarios");
			while($row=mysqli_fetch_array($resultado)){
				echo '
				<tr>

					<td><input type="text" class="id" value="'.$row[0].'"></td>
					<td><input type="text" class="nombre" value="'.$row[1].'"></td>
					<td><input type="text" class="apellido" value="'.$row[2].'"></td>
					<td><input type="text" class="usuario" value="'.$row[3].'"></td>
					<td><input type="text" class="contraseña" value="'.$row[4].'"></td>

					<td><button class="eliminar" data-id="'.$row[0].'">Eliminar</button></td>

				</tr>
				';
			}
		?>
	</table>
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