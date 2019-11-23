<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jugando Craps</title>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap"
	rel="stylesheet">

<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
}

body {
	background: rgb(193, 214, 214);
}

#contenedor_principal {
	background: #8b9b87;
	width: 500px;
	height: 300px;
	margin-top: 100px;
	margin-left: 400px;
	padding-top: 4px;
}

.contenedor_arriba {
	background: rgb(214, 211, 206);
	width: 350px;
	height: 50px;
	margin-left: 50px;
	padding: 10px;
}
</style>
</head>
<body>

	<script type="text/javascript">
		alert("Tiro de salida: " + "${juego.tiroDeSalida}");
	</script>




	<div id="contenedor_principal">

		<div class="contenedor_arriba">

			<div
				style="background: #f77c0a; float: left; width: 130px; height: 40px; margin: 10px; text-align: center">
				<span style="font-size: 20px"> <b>Línea de pase:</b></span>
				${juego.lineaDePase}
			</div>
			<div
				style="background: #f77c0a; float: left; width: 130px; height: 40px; margin: 10px; text-align: center">
				<span style="font-size: 20px"> <b>Tiro de salida:</b></span>
				${juego.tiroDeSalida}
			</div>
		</div>

		<br>
		<hr />
		<div class="wrap" style="float: left">
			<form:form action="jugar2" modelAttribute="juego" class="formulario">

				<input type="submit" value="Lanzar dados" />

			</form:form>
		</div>
		<div class="wrap" style="float: left">
			<form:form action="indexx" class="formulario">

				<input type="submit" value="Terminar el juego" />

			</form:form>
		</div>
		<div style="padding-top: 80px">
			<span
				style="text-align: center; padding-top: 10px; font-size: 30px; color: #2802b4">${juego.mensaje}</span>
		</div>


	</div>
</body>
</html>