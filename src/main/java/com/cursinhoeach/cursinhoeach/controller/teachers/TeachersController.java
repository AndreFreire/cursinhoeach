package com.cursinhoeach.cursinhoeach.controller.teachers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TeachersController {

	@GetMapping("/professores")
	public String professores(Model model) {
		model.addAttribute("title", "Professores");
		return "professores";
	}
	
	
}
