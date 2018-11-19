package com.cursinhoeach.cursinhoeach.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

import com.cursinhoeach.cursinhoeach.composite.keys.DisciplinaKey;

@Entity
@IdClass(DisciplinaKey.class)
public class Disciplina {
	
	private String cpf;
	@Id
	private String disciplina;
	private String link;
	@Id
	private String conteudo;
	@Id
	private String grupo;

	
	public Disciplina(String cpf,String disciplina, String link, String conteudo, String grupo){
		this.cpf = cpf;
		this.disciplina = disciplina;
		this.link = link;
		this.conteudo = conteudo;
		this.grupo = grupo;
	}
	
	Disciplina(){
		
	}
	
	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(String disciplina) {
		this.disciplina = disciplina;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getConteudo() {
		return conteudo;
	}

	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}

	public String getGrupo() {
		return grupo;
	}

	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}

	@Override
	public String toString() {
		return "Disciplina [cpf=" + cpf + ", disciplina=" + disciplina + ", link=" + link + ", conteudo=" + conteudo
				+ ", grupo=" + grupo + "]";
	}

}
