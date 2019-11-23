<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CRAPS</title>
<spring:url value="/RECURSOS" var="urlPublic">
</spring:url>
<link rel="stylesheet" type="text/css"
	href="${urlPublic}/css/miestilos.css" />
</head>


<body>
	<div id="contenedor">

		<header>
			<div>

				<div class="contenedorheader">

					<h1>Bienvenidos al sitio web de nuestro proyecto Craps</h1>

				</div>


				<div class="contenedorheader">
					<img alt="" src="${urlPublic}/imgs/dados.jpg" width="200">
				</div>

			</div>
		</header>


		<nav>

			<div id="nav">

				<ul class="nav">

					<li><a href="#Craps">Craps</a></li>
					<li><a href="#Historia">Historia</a></li>
					<li><a href="#Reglas"> Reglas</a></li>
					<li><a href="#apuesta"> Sistemas de apuesta</a>
						<ul>
							<li><a href="#La_martingala"> La martingala</a></li>
							<li><a href="#falacia_del_jugador"> Falacia del jugador</a></li>

						</ul></li>


					<li><a href="linea_de_pase">Jugar</a></li>

				</ul>

			</div>
		</nav>

		<aside>

			<div>

				<h2>
					<span id="apuesta">Sistemas de apuesta</span>
				</h2>
				<h3>
					<b><span id="La_martingala">La martingala</span></b>
				</h3>
				<p>Ningún sistema de apuestas es efectivo para ganarle siempre a
					un casino en juegos de azar tal como el Craps, aunque existen
					sistemas que pueden utilizarse. Uno de los sistemas más conocidos
					es el de la Martingala, donde un jugador comienza apostando una
					cantidad determinada y va doblando su apuesta en caso de resultar
					perdedora. Al momento de ganar la apuesta comienza de nuevo
					apostando la cantidad inicial, siendo la idea tener una ganancia
					neta igual al monto inicial después de ganar la apuesta. La falla
					en este sistema consiste en que el jugador corre el riesgo de
					quedarse sin fichas después de doblar en varias ocasiones después
					de una serie de pérdidas al hilo, así como no poder seguir doblando
					debido a que se alcanza el máximo de la mesa permitido por el
					casino. Además, la intención de éste método es tener una ganancia
					igual a la apuesta inicial cada vez que se gana, por lo que si
					dicha apuesta es pequeña, la ganancia cada vez que se tiene un
					resultado favorable lo será también.</p>

				<h3>
					<span id="falacia_del_jugador">Falacia del jugador</span>
				</h3>
				<p>Otros sistemas dependen de la falacia del jugador, donde en
					la mesa de Craps se traduce en que tiros anteriores influencian las
					probabilidades de tiros futuros. Por ejemplo, la falacia del
					jugador dicta que un jugador de Craps debe de apostar al número
					once si éste no ha caído o ha caído en diversas ocasiones en los
					últimos veinte tiros.</p>
				<p>En realidad, cada tiro de los dados es un evento
					independiente, por lo que la probabilidad de que caiga un once es
					uno en dieciocho en cada tiro, sin importar las veces que éste
					número haya caído en los últimos n tiros.</p>

			</div>


		</aside>

		<section>

			<h2>
				<span id="Craps">CRAPS</span>
			</h2>
			<hr />
			<p>
				El <strong>Craps</strong>, también llamado <strong>pase
					inglés</strong>, es un juego de azar que consiste en realizar distintas
				apuestas al resultado que se obtendrá al lanzar dos dados en el tiro
				siguiente o en toda una ronda. Aunque el juego es especialmente
				famoso en la mayoría de casinos alrededor del mundo en una modalidad
				en la que se apuesta contra «la casa» o «banca», existen otras
				versiones en las que los jugadores apuestan unos contra otros, como
				en el caso del craps callejero.
			</p>

			<h2>
				<span id="Historia">Historia</span>
			</h2>
			<hr />
			<p>El juego de Craps se desarrolló como una simplificación del
				juego inglés llamado Hazard. Sus orígenes son difíciles de rastrear
				y se pueden remontar hasta las Cruzadas, recibiendo posteriormente
				la influencia de jugadores franceses. Lo que se convertiría en la
				versión moderna americana del juego fue llevado a Nueva Orleans por
				Bernardo de Marigny, un político y jugador descendiente de una
				familia de terratenientes adinerados de Luisiana. Sin embargo
				existía un fallo en la versión del juego de Bernardo, donde los
				jugadores podían sacarle ventaja al casino utilizando dados cargados
				y apostando a favor o en contra de la persona que lanzaba los dados.
				Un hombre llamado John H. Winn introdujo la opción de apostar "en
				contra" con la barra de no pase, que consiste en la versión del
				juego que permanece hasta ahora.</p>
			<p>El juego, conocido originalmente como crapaud (una palabra en
				francés que significa «sapo», en referencia al estilo original de
				las personas de jugarlo de cuclillas sobre el suelo o en las
				banquetas) se considera que debe su popularidad actual al Craps
				callejero. La versión callejera se hizo muy famosa entre los
				soldados de la Segunda Guerra Mundial.</p>

			<h2>
				<span id="Reglas">Reglas</span>
			</h2>
			<hr />
			<p>Cuando se juega en un casino contra la banca, o casa, uno o
				varios jugadores realizan diversas apuestas al resultado que se
				obtendrá en los dados que lance alguno de los jugadores, el cual es
				designado «tirador» o «shooter» por su nombre en inglés. Para
				comenzar el juego, durante lo que se conoce como «tiro de salida»,
				el jugador necesita realizar una apuesta que se conoce como «línea
				de pase», en la que se busca obtener un siete (conocido como «siete
				natural» o «siete ganador») o un once en la combinación de dados
				para ganar la apuesta, que paga uno a uno. Si por el contrario
				obtiene un dos, tres o doce (números conocidos como «craps») pierde
				automáticamente su apuesta y necesitará colocar de nuevo una apuesta
				para seguir tirando. Si durante el primer lanzamiento no obtiene un
				siete u once (con que gana), o un dos, tres o doce (con que pierde),
				el juego entrará en una segunda etapa, en la que se marcará el
				«punto» en el número que se obtenga en dicho lanzamiento (cuatro,
				cinco, seis, ocho, nueve o diez). En esta etapa, el tirador buscará
				volver a obtener ese número en los dados, con lo que ganará el
				«roll» o «ronda», antes de obtener un siete, llamado «siete fuera» o
				«seven out». Si logra repetir el número del punto, el jugador ganará
				su apuesta y se le pagará uno a uno el monto. Si por el contrario si
				aparece un siete, perderá su apuesta. En ambos casos se considera
				que la ronda ha terminado y el juego vuelve a comenzar, aunque si la
				ronda culminó debido a un siete fuera se designará un nuevo tirador
				de entre los distintos jugadores.</p>

		</section>

		<footer> Copyright-Derechos reservados Jose Parra </footer>
	</div>
</body>
</html>