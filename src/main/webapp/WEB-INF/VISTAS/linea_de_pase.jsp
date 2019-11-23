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

#contenedorprincipal {
	background: #8b9b87;
	width: 500px;
	height: 300px;
	margin-top: 100px;
	margin-left: 400px;
}
</style>
</head>


<body>

	<div></div>

	<div id="contenedorprincipal">

		<h1 style="color: #025a02">Comienza el juego...Suerte!!!</h1>
		<hr />
		<br>

		<div class="wrap">
			<form:form action="jugar" modelAttribute="juego" class="formulario">
				<p>
					<form:label path="lineaDePase">
						<span style="font-size: 20px"> <b>Línea de pase:</b></span>
					</form:label>
					<form:input path="lineaDePase" value="0"
						placeholder="Escribe tu línea de pase" />
				</p>
				<br>
				<hr />

				<input type="submit" value="Tiro de salida" />
				<input type="reset" value="Restaurar su apuesta">
			</form:form>

			<div>
				<span style="font-size: 30px; color: #2802b4; padding-top: 10px;"><b>${massage}</b></span>
			</div>
		</div>

	</div>



</body>
</html>