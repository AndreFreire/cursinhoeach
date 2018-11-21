package com.cursinhoeach.cursinhoeach.controller.portal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String efetuaLogin(Pessoa p, HttpSession session) {
		Pessoa pessoa = pessoaRepository.findPessoa(p.getId());
		if (pessoa != null && p.getSenha().equals(pessoa.getSenha())) {
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
	
	@RequestMapping(value="addSubject",method = RequestMethod.POST)
	public String addSubject(Disciplina disciplina,HttpSession session ) {
		if (session.getAttribute("usuarioInvalido") == null || (boolean) session.getAttribute("usuarioInvalido")) {
			return "redirect:portal-login";
		}
		disciplina.setId(disciplinaRepository.finalKey());
		disciplina.setNomedisciplina((String)session.getAttribute("disciplina"));
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
	
	@RequestMapping("cadastrarPessoa")
	public String cadastrarPessoa(Pessoa pessoa,HttpSession session ) {
		if (session.getAttribute("usuarioInvalido") == null || (boolean) session.getAttribute("usuarioInvalido")) {
			return "redirect:portal-login";
		}
		if(pessoa.getTipo().equals("0")) {
			pessoa.setDisciplina(null);
		}
		pessoaRepository.save(pessoa);
		return "redirect:portal";
	}
}
