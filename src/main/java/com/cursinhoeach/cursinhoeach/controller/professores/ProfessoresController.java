package com.cursinhoeach.cursinhoeach.controller.professores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProfessoresController {

	@GetMapping("/professores")
	public String professores(Model model) {
		model.addAttribute("title", "Professores");
		return "professores";
	}
	
	
}
