package com.educaronline.controller;

import java.security.SecureRandom;

/*
 * CLASE POJOS (Plain Old Java Objects) Juego QUE SIMULA EL JUEGO CRAPS.
 * "NO HEREDA DE NINGUNA OTRA CLASE"
 * "NO IMPLEMENTA NINGUNA INTERFAZ"
 */

public class Juego {

	// VARIABLES DE INSTANCIAS
	private double lineaDePase;
	private int tiroDeSalida;
	private int resultado;
	private String mensaje;

	// .......................................................................................

	// CONSTRUCTORES
	public Juego() {

	}

	public Juego(double lineaDePase, short tiroDeSalida, short resultado, String mensaje) {

		this.lineaDePase = lineaDePase;
		this.tiroDeSalida = tiroDeSalida;
		this.resultado = resultado;
		this.mensaje = mensaje;
	}

	// .......................................................................................

	// MÉTODOS SETTERS Y GETTERS
	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public double getLineaDePase() {
		return lineaDePase;
	}

	public void setLineaDePase(double lineaDePase) {
		this.lineaDePase = lineaDePase;
	}

	public int getTiroDeSalida() {
		return tiroDeSalida;
	}

	public void setTiroDeSalida(int tiroDeSalida) {
		this.tiroDeSalida = tiroDeSalida;
	}

	public int getResultado() {
		return resultado;
	}

	public void setResultado(int resultado) {
		this.resultado = resultado;
	}

	// .......................................................................................

	/*
	 * MÉTODO ESTÁTICO QUE SIMULA EL LANZAMIENTO DE LOS DADOS Y DEVUELVE LA SUMA DE
	 * LAS CARAS SUPERIORES DE LOS DADOS.
	 */

	public static int sumaDados() {

		// VARIABLES LOCALES
		int caraDado1, caraDado2;

		// EL OBJETO numerosAleatorios PRODUCIRÁ NÚMEROS ALEATORIOS SEGUROS.
		SecureRandom numerosAleatorios = new SecureRandom();

		caraDado1 = (1 + numerosAleatorios.nextInt(6));
		caraDado2 = (1 + numerosAleatorios.nextInt(6));

		int sumadados = (caraDado1 + caraDado2);

		return sumadados;
	}

	// .......................................................................................

	public static String condicionPrimerLanzamiento(int resultadoPrimerLanzamiento) {

		String condicionJugador;

		if (resultadoPrimerLanzamiento == 7 || resultadoPrimerLanzamiento == 11) {

			condicionJugador = "GANO";
		} else if (resultadoPrimerLanzamiento == 2 || resultadoPrimerLanzamiento == 3
				|| resultadoPrimerLanzamiento == 12) {

			condicionJugador = "PIERDE";

		} else {

			condicionJugador = "PASA A LA SEGUNDA FASE";
		}

		return condicionJugador;
	}

	// .......................................................................................

}
