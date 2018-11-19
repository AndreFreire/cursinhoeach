package com.cursinhoeach.cursinhoeach.controller.subjects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cursinhoeach.cursinhoeach.repository.DisciplinaRepository;


@Controller
public class SubjectsController {
	
	@Autowired
	DisciplinaRepository disciplinaRepository;
	
	@GetMapping("/biologia")
	public String biologia(Model model) {
		model.addAttribute("title", "Biologia");
		model.addAttribute("image","biologia.jpg");
		model.addAttribute("description",Descriptions.biologiaDescription);
		model.addAttribute("model",new SubjectModel(disciplinaRepository.findMateria("Biologia")));
		return "materia";
	}
	
	@GetMapping("/filosofia")
	public String filosofia(Model model) {
		model.addAttribute("title", "Filosofia");
		model.addAttribute("image","filosofia.jpg");
		model.addAttribute("description",Descriptions.filosofiaDescription);
		model.addAttribute("model",new SubjectModel(disciplinaRepository.findMateria("Filosofia")));
		return "materia";
	}
	
	@GetMapping("/fisica")
	public String fisica(Model model) {
		model.addAttribute("title", "Física");
		model.addAttribute("image","fisica.jpg");
		model.addAttribute("description",Descriptions.fisicaDescription);
		model.addAttribute("model",new SubjectModel(disciplinaRepository.findMateria("Fisica")));
		return "materia";
	}
	
	@GetMapping("/geografia")
	public String geografia(Model model) {
		model.addAttribute("title", "Geografia");
		model.addAttribute("image","geografia.jpg");
		model.addAttribute("description",Descriptions.geografiaDescription);
		model.addAttribute("model",new SubjectModel(disciplinaRepository.findMateria("Geografia")));
		return "materia";
	}
	
	@GetMapping("/historia")
	public String historia(Model model) {
		model.addAttribute("title", "História");
		model.addAttribute("image","historia.jpg");
		model.addAttribute("description",Descriptions.historiaDescription);
		model.addAttribute("model",new SubjectModel(disciplinaRepository.findMateria("Historia")));
		return "materia";
	}
	
	@GetMapping("/ingles")
	public String ingles(Model model) {
		model.addAttribute("title", "Inglês");
		model.addAttribute("image","ingles.jpg");
		model.addAttribute("description",Descriptions.inglesDescription);
		model.addAttribute("model",new SubjectModel(disciplinaRepository.findMateria("Ingles")));
		return "materia";
	}
	
	@GetMapping("/literatura")
	public String literatura(Model model) {
		model.addAttribute("title", "Literatura");
		model.addAttribute("image","literatura.jpg");
		model.addAttribute("description",Descriptions.literaturaDescription);
		model.addAttribute("model",new SubjectModel(disciplinaRepository.findMateria("Literatura")));
		return "materia";
	}
	
	@GetMapping("/matematica")
	public String matematica(Model model) {
		model.addAttribute("title", "Matemática");
		model.addAttribute("image","matematica.jpg");
		model.addAttribute("description",Descriptions.matematicaDescription);
		model.addAttribute("model",new SubjectModel(disciplinaRepository.findMateria("Matematica")));
		return "materia";
	}
	
	@GetMapping("/portugues")
	public String portugues(Model model) {
		model.addAttribute("title", "Português");
		model.addAttribute("image","portugues.jpg");
		model.addAttribute("description",Descriptions.portuguesDescription);
		model.addAttribute("model",new SubjectModel(disciplinaRepository.findMateria("Portugues")));
		return "materia";
	}
	
	@GetMapping("/quimica")
	public String quimica(Model model) {
		model.addAttribute("title", "Química");
		model.addAttribute("image","quimica.jpg");
		model.addAttribute("description",Descriptions.quimicaDescription);
		model.addAttribute("model",new SubjectModel(disciplinaRepository.findMateria("Quimica")));
		return "materia";
	}
	
	
	@GetMapping("/sociologia")
	public String sociologia(Model model) {
		model.addAttribute("title", "Sociologia");
		model.addAttribute("image","sociologia.jpg");
		model.addAttribute("description",Descriptions.sociologiaDescription);
		model.addAttribute("model",new SubjectModel(disciplinaRepository.findMateria("Sociologia")));
		return "materia";
	}
}
