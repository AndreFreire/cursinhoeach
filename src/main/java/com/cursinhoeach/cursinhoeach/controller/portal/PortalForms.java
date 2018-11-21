package com.cursinhoeach.cursinhoeach.controller.portal;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cursinhoeach.cursinhoeach.controller.file.FileReader;
import com.cursinhoeach.cursinhoeach.controller.file.FileWriter;
import com.cursinhoeach.cursinhoeach.model.Disciplina;
import com.cursinhoeach.cursinhoeach.model.Pessoa;
import com.cursinhoeach.cursinhoeach.repository.DisciplinaRepository;
import com.cursinhoeach.cursinhoeach.repository.NotaRepository;
import com.cursinhoeach.cursinhoeach.repository.PessoaRepository;

@Controller
public class PortalForms {

	@Autowired
	PessoaRepository pessoaRepository;

	@Autowired
	DisciplinaRepository disciplinaRepository;

	@Autowired
	NotaRepository notaRepository;

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
	public String removeSubject(String key, HttpSession session) {
		if (session.getAttribute("usuarioInvalido") == null || (boolean) session.getAttribute("usuarioInvalido")) {
			return "redirect:portal-login";
		}
		disciplinaRepository.deleteById(Integer.parseInt(key));
		return "redirect:portal";
	}

	@RequestMapping(value = "addSubject", method = RequestMethod.POST)
	public String addSubject(Disciplina disciplina, HttpSession session) {
		if (session.getAttribute("usuarioInvalido") == null || (boolean) session.getAttribute("usuarioInvalido")) {
			return "redirect:portal-login";
		}
		disciplina.setId(disciplinaRepository.finalKey());
		disciplina.setNomedisciplina((String) session.getAttribute("disciplina"));
		disciplinaRepository.save(disciplina);
		return "redirect:portal";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		while (session.getAttributeNames().hasMoreElements()) {
			session.removeAttribute(session.getAttributeNames().nextElement());
		}
		return "redirect:portal";
	}

	@RequestMapping("cadastrarPessoa")
	public String cadastrarPessoa(Pessoa pessoa, HttpSession session) {
		if (session.getAttribute("usuarioInvalido") == null || (boolean) session.getAttribute("usuarioInvalido")) {
			return "redirect:portal-login";
		}
		if (pessoa.getTipo().equals("0")) {
			pessoa.setDisciplina(null);
		}
		pessoaRepository.save(pessoa);
		return "redirect:portal";
	}

	@PostMapping(value = "uploadFile")
	public String uploadFile(@RequestParam("fileupload") MultipartFile file, RedirectAttributes redirectAttributes,
			HttpSession session) {
		if (session.getAttribute("usuarioInvalido") == null || (boolean) session.getAttribute("usuarioInvalido")) {
			return "redirect:portal-login";
		}
		FileReader fileReader = new FileReader(file);
		notaRepository.saveAll(fileReader.getNotasAlunos());
		return "redirect:portal";
	}

	@RequestMapping(value = "downloadFile", method = RequestMethod.GET)
	public void downloadFile(HttpServletResponse response) {
		List<Pessoa> alunos = pessoaRepository.findAlunos();
		try {

			InputStream is = new FileWriter(alunos).getInputStream();
			org.apache.commons.io.IOUtils.copy(is, response.getOutputStream());
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/plain; charset=UTF-8");
			response.setHeader("charset", "UTF-8");
			response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode("modelo.txt", "UTF-8"));
			response.flushBuffer();
		} catch (IOException ex) {

			throw new RuntimeException("IOError writing file to output stream");
		}
	}
	

}
