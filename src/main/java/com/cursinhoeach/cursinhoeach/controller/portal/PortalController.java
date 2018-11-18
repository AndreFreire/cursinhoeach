package com.cursinhoeach.cursinhoeach.controller.portal;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cursinhoeach.cursinhoeach.controller.subjects.SubjectModelMock;

@Controller
public class PortalController {

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
		
		model.addAttribute("title", "Portal");
		model.addAttribute("nome","Luis");
		model.addAttribute("sobrenome","Henrique");
		model.addAttribute("materia","Biologia");
		model.addAttribute("tipoUsuario", "1");//0 = aluno; 1 = professor; 2 = admin
		model.addAttribute("model",SubjectModelMock.biologia());
		return "portal";
	}

	@RequestMapping("efetuaLogin")
	public String efetuaLogin(String login, String senha, HttpSession session) {
		if (login.equals(senha)) {//TODO Conexão com o banco 
			session.setAttribute("login", login);
			session.setAttribute("sennha", senha);
			session.setAttribute("usuarioInvalido", false);
			return "redirect:portal";
		}
		session.setAttribute("usuarioInvalido", true);
		return "redirect:portal-login";

	}
}
