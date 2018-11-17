package com.cursinhoeach.cursinhoeach.controller.subjects;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SubjectsController {

	@GetMapping("/biologia")
	public String biologia(Model model) {
		model.addAttribute("title", "Biologia");
		return "materia";
	}
	
	@GetMapping("/filosofia")
	public String filosofia(Model model) {
		model.addAttribute("title", "Filosofia");
		return "materia";
	}
	
	@GetMapping("/fisica")
	public String fisica(Model model) {
		model.addAttribute("title", "Física");
		return "materia";
	}
	
	@GetMapping("/geografia")
	public String geografia(Model model) {
		model.addAttribute("title", "Geografia");
		return "materia";
	}
	
	@GetMapping("/historia")
	public String historia(Model model) {
		model.addAttribute("title", "História");
		return "materia";
	}
	
	@GetMapping("/ingles")
	public String ingles(Model model) {
		model.addAttribute("title", "Inglês");
		return "materia";
	}
	
	@GetMapping("/literatura")
	public String literatura(Model model) {
		model.addAttribute("title", "Literatura");
		return "materia";
	}
	
	@GetMapping("/matematica")
	public String matematica(Model model) {
		model.addAttribute("title", "Matemática");
		return "materia";
	}
	
	@GetMapping("/portugues")
	public String portugues(Model model) {
		model.addAttribute("title", "Português");
		return "materia";
	}
	
	@GetMapping("/quimica")
	public String quimica(Model model) {
		model.addAttribute("title", "Química");
		return "materia";
	}
	
	
	@GetMapping("/sociologia")
	public String sociologia(Model model) {
		model.addAttribute("title", "Sociologia");
		return "materia";
	}
}
