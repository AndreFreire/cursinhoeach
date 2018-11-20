package com.cursinhoeach.cursinhoeach.controller.portal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cursinhoeach.cursinhoeach.controller.disciplinas.DisciplinaControllerModel;
import com.cursinhoeach.cursinhoeach.model.Pessoa;
import com.cursinhoeach.cursinhoeach.repository.DisciplinaRepository;
import com.cursinhoeach.cursinhoeach.repository.PessoaRepository;

@Controller
public class PortalController {
	@Autowired
	PessoaRepository pessoaRepository;

	@Autowired
	DisciplinaRepository disciplinaRepository;

	@GetMapping("/portal-login")
	public String portalLogin(Model model, HttpSession session) {
		if (session.getAttribute("usuarioInvalido") != null && !(boolean) session.getAttribute("usuarioInvalido")) {
			model.addAttribute("title", "Portal");
			return "redirect:portal";
		}
		model.addAttribute("title", "Portal Login");
		return "portal-login";

	}

	@GetMapping("/portal")
	public String portal(Model model, HttpSession session) {
		if (session.getAttribute("usuarioInvalido") == null || (boolean) session.getAttribute("usuarioInvalido")) {
			return "redirect:portal-login";
		}
		Pessoa p = (Pessoa) session.getAttribute("pessoa");
		if (p.getTipo().equals("1")) {//Professor
			String disciplina = disciplinaRepository.findProfessorDisciplina(p.getId());
			DisciplinaControllerModel disciplinaModel = new DisciplinaControllerModel(disciplinaRepository.findMateria(disciplina));
			disciplinaModel.setMateria(disciplina);
			session.setAttribute("pessoaid", p.getId());
			session.setAttribute("disciplina", disciplina);
			model.addAttribute("model",disciplinaModel );
		}
		return "portal";
	}

	
}

