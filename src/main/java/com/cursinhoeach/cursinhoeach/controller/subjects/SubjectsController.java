package com.cursinhoeach.cursinhoeach.controller.subjects;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SubjectsController {

	@GetMapping("/biologia")
	public String biologia(Model model) {
		model.addAttribute("title", "Biologia");
		model.addAttribute("image","biologia.jpg");
		model.addAttribute("description",Descriptions.biologiaDescription);
		model.addAttribute("model",SubjectModelMock.biologia());
		return "materia";
	}
	
	@GetMapping("/filosofia")
	public String filosofia(Model model) {
		model.addAttribute("title", "Filosofia");
		model.addAttribute("image","filosofia.jpg");
		model.addAttribute("description",Descriptions.filosofiaDescription);
		model.addAttribute("model",SubjectModelMock.filosofia());
		return "materia";
	}
	
	@GetMapping("/fisica")
	public String fisica(Model model) {
		model.addAttribute("title", "Física");
		model.addAttribute("image","fisica.jpg");
		model.addAttribute("description",Descriptions.fisicaDescription);
		model.addAttribute("model",SubjectModelMock.fisica());
		return "materia";
	}
	
	@GetMapping("/geografia")
	public String geografia(Model model) {
		model.addAttribute("title", "Geografia");
		model.addAttribute("image","geografia.jpg");
		model.addAttribute("description",Descriptions.geografiaDescription);
		model.addAttribute("model",SubjectModelMock.geografia());
		return "materia";
	}
	
	@GetMapping("/historia")
	public String historia(Model model) {
		model.addAttribute("title", "História");
		model.addAttribute("image","historia.jpg");
		model.addAttribute("description",Descriptions.historiaDescription);
		model.addAttribute("model",SubjectModelMock.historia());
		return "materia";
	}
	
	@GetMapping("/ingles")
	public String ingles(Model model) {
		model.addAttribute("title", "Inglês");
		model.addAttribute("image","ingles.jpg");
		model.addAttribute("description",Descriptions.inglesDescription);
		model.addAttribute("model",SubjectModelMock.ingles());
		return "materia";
	}
	
	@GetMapping("/literatura")
	public String literatura(Model model) {
		model.addAttribute("title", "Literatura");
		model.addAttribute("image","literatura.jpg");
		model.addAttribute("description",Descriptions.literaturaDescription);
		model.addAttribute("model",SubjectModelMock.literatura());
		return "materia";
	}
	
	@GetMapping("/matematica")
	public String matematica(Model model) {
		model.addAttribute("title", "Matemática");
		model.addAttribute("image","matematica.jpg");
		model.addAttribute("description",Descriptions.matematicaDescription);
		model.addAttribute("model",SubjectModelMock.matematica());
		return "materia";
	}
	
	@GetMapping("/portugues")
	public String portugues(Model model) {
		model.addAttribute("title", "Português");
		model.addAttribute("image","portugues.jpg");
		model.addAttribute("description",Descriptions.portuguesDescription);
		model.addAttribute("model",SubjectModelMock.portugues());
		return "materia";
	}
	
	@GetMapping("/quimica")
	public String quimica(Model model) {
		model.addAttribute("title", "Química");
		model.addAttribute("image","quimica.jpg");
		model.addAttribute("description",Descriptions.quimicaDescription);
		model.addAttribute("model",SubjectModelMock.quimica());
		return "materia";
	}
	
	
	@GetMapping("/sociologia")
	public String sociologia(Model model) {
		model.addAttribute("title", "Sociologia");
		model.addAttribute("image","sociologia.jpg");
		model.addAttribute("description",Descriptions.sociologiaDescription);
		model.addAttribute("model",SubjectModelMock.sociologia());
		return "materia";
	}
}
