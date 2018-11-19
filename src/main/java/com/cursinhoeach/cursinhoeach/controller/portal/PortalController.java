package com.cursinhoeach.cursinhoeach.controller.portal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cursinhoeach.cursinhoeach.controller.subjects.SubjectModel;
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
			String disciplina = disciplinaRepository.findProfessorDisciplina(p.getCpf());
			model.addAttribute("materia",disciplina);
			model.addAttribute("disciplina", new SubjectModel(disciplinaRepository.findMateria(disciplina)));
		}
		return "portal";
	}

	@RequestMapping("efetuaLogin")
	public String efetuaLogin(String login, String senha, HttpSession session) {
		Pessoa pessoa = pessoaRepository.findPessoa(login);
		if (pessoa != null && senha.equals(pessoa.getSenha())) {
			session.setAttribute("pessoa", pessoa);
			session.setAttribute("usuarioInvalido", false);
			return "redirect:portal";
		}
		session.setAttribute("usuarioInvalido", true);
		return "redirect:portal-login";

	}
}
