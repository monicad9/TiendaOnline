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
	      	<a href="./index.php" class="brand-logo"><img id="logo" src="./imagenes/logo.png">Electronic Store</a>
	     	<ul id="nav-mobile" class="right hide-on-med-and-down">
	        	<li><a href="./index.php" class="active">Inicio</a></li>
	        	<li><a href="./login.php"">Admin</a></li>
	        	<li><a href="./carritodecompras.php" title="ver carrito de compras"><img id="carrito" src="./imagenes/carrito.png"></a></li>
	      	</ul>
	    </div>
	 </nav>
	 
	<section>
		
	<?php
		include 'conexion.php';
		$re=mysqli_query($con, "select * from productos where id=".$_GET['id'])or die(mysqli_error($con));
		while ($f=mysqli_fetch_array($re)) {
		?>
			
			<center>
				<img class="imgDetalle" src="./productos/<?php echo $f['imagen'];?>"><br>

				<span class="n_producto"><?php echo $f['nombre'];?></span><br>

				<span class="precio">Precio: <?php echo $f['precio'];?>€</span><br>

				<div class="detalles"><?php echo $f['descripcion'];?></div><br>

				<a class="carritoCompra" href="./carritodecompras.php?id=<?php  echo $f['id'];?>">Añadir al carrito de compras</a>
			</center>
		
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