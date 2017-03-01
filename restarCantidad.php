<?php
session_start();
					include "conexion.php";
					//Agrego la variable de sesion al arreglo
					$arreglo=$_SESSION['carrito'];
					//Recorro el arreglo 
					for($i=0;$i<count($arreglo);$i++){
						//Consulto la cantidad en stcck dependiendo del Id que baya el ciclo For
						$re=mysqli_query($con, "select stock from productos where id=".$arreglo[$i]['Id'])or die(mysqli_error($con));
						while ($f=mysqli_fetch_array($re)) {
							//hago el calculo de cuantos van a quedar en Stock
							$x=$f['stock']-$arreglo[$i]['Cantidad'];
							//Actualizo el registro stock de la BD
							mysqli_query($con, "update productos set stock=".$x." where id=".$arreglo[$i]['Id'])or die(mysqli_error($con));
						}
						
					}
					
		$total=0;
		$tabla='<table border="1"><tr>
		<th>Nombre</th>
		<th>Cantidad</th>
		<th>Precio</th>
		<th>Subtotal</th></tr>';
		for($i=0;$i<count($arreglo);$i++){
			
			$tabla=$tabla.'<tr>
			<td>'.$arreglo[$i]['Nombre'].'</td>
			<td>'.$arreglo[$i]['Cantidad'].'</td>
			<td>'.$arreglo[$i]['Precio'].'</td>
			<td>'.$arreglo[$i]['Cantidad'] * $arreglo[$i]['Precio'].'</td>
			</tr>';
			$total=$total+($arreglo[$i]['Cantidad'] * $arreglo[$i]['Precio']);			
		}
		$tabla.'</table>';
		
		
?>