
package com.educaronline.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CrapsController {

	// CREAMOS UN OBJETO (MEMORIA HEAD) DE TIPO JUEGO Y UNA REFERENCIA (MEMORIA
	// STACK) A ESE OBJETO.
	Juego juego = new Juego();

	// .......................................................................................
	@RequestMapping
	public String index() {

		return "index";
	}
	// .......................................................................................

	@RequestMapping("indexx")
	public String indexx() {

		return "index";
	}
	// .......................................................................................

	@RequestMapping("linea_de_pase")
	public ModelAndView lineaDePase() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("linea_de_pase");
		mav.addObject("juego", juego);
		return mav;
	}
	// .......................................................................................

	@RequestMapping("jugar")
	public ModelAndView jugar(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		try {
			String apuestaInicial = request.getParameter("lineaDePase");

			juego.setLineaDePase(Double.parseDouble(apuestaInicial));

			if (juego.getLineaDePase() > 0) {

				juego.setTiroDeSalida(Juego.sumaDados());
				juego.setMensaje(Juego.condicionPrimerLanzamiento(juego.getTiroDeSalida()));

				String condicionJugador = juego.getMensaje();

				if (condicionJugador == "GANO" || condicionJugador == "PIERDE") {

					mav.addObject("juego", juego);
					mav.setViewName("final_juego1");

				} else {

					mav.addObject("juego", juego);
					mav.setViewName("jugar");
				}
			} else {

				mav.setViewName("linea_de_pase");
				String message = "OJO!!...haz ingresado una cantidad no positiva.";
				mav.addObject("massage", message);

			}

		} catch (Exception e) {

			mav.setViewName("linea_de_pase");
			String message = "OJO!!...haz ingresado un String.";
			mav.addObject("massage", message);

		}
		mav.addObject("juego", juego);
		return mav;

	}
	// .......................................................................................

	@RequestMapping("jugar2")
	public ModelAndView jugar2(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();

		juego.setResultado(Juego.sumaDados());
		int resultado2 = juego.getResultado();
		int sumaSalida = juego.getTiroDeSalida();

		if (resultado2 == 7) {

			juego.setMensaje("PIERDE");
			mav.setViewName("final_juego");

		} else if (resultado2 == sumaSalida) {

			juego.setMensaje("GANO");
			mav.setViewName("final_juego");
		} else {

			juego.setMensaje("Vuelva a lanzar los dados");
			mav.setViewName("jugar2");
		}

		mav.addObject("juego", juego);
		return mav;

	}

}
