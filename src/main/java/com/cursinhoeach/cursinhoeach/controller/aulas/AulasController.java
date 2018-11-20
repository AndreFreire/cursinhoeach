package com.cursinhoeach.cursinhoeach.controller.aulas;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AulasController {

	@GetMapping("/aulas")
	public String aulas(Model model) {
		model.addAttribute("title", "Aulas");
		return "aulas";
	}
	
	
}
