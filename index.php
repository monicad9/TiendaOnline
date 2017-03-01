<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Carrito de Compras</title>
	<link rel="stylesheet" type="text/css" href="./css/estilos.css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="./js/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
</head>
<body>

	<nav>
	    <div class="nav-wrapper">
	      	<a href="#" class="brand-logo"><img id="logo" src="./imagenes/logo.png">Electronic Store</a>
	     	<ul id="nav-mobile" class="right hide-on-med-and-down">
	        	<li class="active"><a href="#" >Inicio</a></li>
	        	<li><a href="./login.php">Login</a></li>
	        	<li><a href="./register.php">Register</a></li>
	        	<li><a href="./carritodecompras.php" title="ver carrito de compras"><img id="carrito" src="./imagenes/carrito.png"></a></li>
	      	</ul>
	    </div>
	 </nav>

<section>
	<center><h3>Catálogo de productos</h3></center>
	<?php
		include 'conexion.php';
		$re=mysqli_query($con, "select * from productos")or die(mysqli_error($con));
		while ($f=mysqli_fetch_array($re)) {
		?>
			<div class="producto">
			<center>
				<img src="./productos/<?php echo $f['imagen'];?>"><br>
				<span><?php echo $f['nombre'];?></span><br>
				<a href="./detalles.php?id=<?php  echo $f['id'];?>">ver</a>
			</center>
		</div>
	<?php
		}
	?>
		
		
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