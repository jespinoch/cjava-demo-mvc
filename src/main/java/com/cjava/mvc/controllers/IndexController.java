package com.cjava.mvc.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/prueba")
public class IndexController {

	@Value("${application.controller.titulo}")
	private String titulo;
	
	@GetMapping("/index")
	public String index(Model model) {
		model.addAttribute("titulo", this.titulo);
		return "index";
	}
	
	@GetMapping("/index1")
	public String index1(Model model) {
		model.addAttribute("titulo", "Hola CJAVA");
		return "index";
	}
}
