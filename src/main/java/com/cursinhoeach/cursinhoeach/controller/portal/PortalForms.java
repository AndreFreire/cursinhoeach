package com.cursinhoeach.cursinhoeach.controller.portal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cursinhoeach.cursinhoeach.model.Disciplina;
import com.cursinhoeach.cursinhoeach.model.Pessoa;
import com.cursinhoeach.cursinhoeach.repository.DisciplinaRepository;
import com.cursinhoeach.cursinhoeach.repository.PessoaRepository;

@Controller
public class PortalForms {
	
	@Autowired
	PessoaRepository pessoaRepository;

	@Autowired
	DisciplinaRepository disciplinaRepository;

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
	
	@RequestMapping("removeSubject")
	public String removeSubject(String key,HttpSession session) {
		if (session.getAttribute("usuarioInvalido") == null || (boolean) session.getAttribute("usuarioInvalido")) {
			return "redirect:portal-login";
		}
		disciplinaRepository.deleteById(Integer.parseInt(key));
		return "redirect:portal";
	}
	
	@RequestMapping("addSubject")
	public String addSubject(String group,String subject, String link,HttpSession session ) {
		if (session.getAttribute("usuarioInvalido") == null || (boolean) session.getAttribute("usuarioInvalido")) {
			return "redirect:portal-login";
		}
		int newId =disciplinaRepository.finalKey();
		String pessoaId = (String)session.getAttribute("pessoaid");
		String disciplinaId = (String)session.getAttribute("disciplina");
		Disciplina disciplina = new Disciplina(newId,pessoaId,disciplinaId,group,subject,link);
		disciplinaRepository.save(disciplina);
		return "redirect:portal";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session ) {
		while(session.getAttributeNames().hasMoreElements()) {
			session.removeAttribute(session.getAttributeNames().nextElement());
		}		
		return "redirect:portal";
	}
}
