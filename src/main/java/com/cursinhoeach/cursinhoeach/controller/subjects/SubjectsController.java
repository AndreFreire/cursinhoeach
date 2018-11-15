package com.cursinhoeach.cursinhoeach.controller.subjects;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SubjectsController {

	@GetMapping("/biologia")
	public String biologia(Model model) {
		model.addAttribute("title", "Biologia");
		return "biologia";
	}
	
	@GetMapping("/filosofia")
	public String filosofia(Model model) {
		model.addAttribute("title", "Filosofia");
		return "filosofia";
	}
	
	@GetMapping("/fisica")
	public String fisica(Model model) {
		model.addAttribute("title", "Física");
		return "fisica";
	}
	
	@GetMapping("/geografia")
	public String geografia(Model model) {
		model.addAttribute("title", "Geografia");
		return "geografia";
	}
	
	@GetMapping("/historia")
	public String historia(Model model) {
		model.addAttribute("title", "História");
		return "historia";
	}
	
	@GetMapping("/ingles")
	public String ingles(Model model) {
		model.addAttribute("title", "Inglês");
		return "ingles";
	}
	
	@GetMapping("/literatura")
	public String literatura(Model model) {
		model.addAttribute("title", "Literatura");
		return "literatura";
	}
	
	@GetMapping("/matematica")
	public String matematica(Model model) {
		model.addAttribute("title", "matemática");
		return "matematica";
	}
	
	@GetMapping("/portugues")
	public String portugues(Model model) {
		model.addAttribute("title", "Português");
		return "portugues";
	}
	
	@GetMapping("/quimica")
	public String quimica(Model model) {
		model.addAttribute("title", "Química");
		return "quimica";
	}
	
	
	@GetMapping("/sociologia")
	public String sociologia(Model model) {
		model.addAttribute("title", "Sociologia");
		return "sociologia";
	}
}
