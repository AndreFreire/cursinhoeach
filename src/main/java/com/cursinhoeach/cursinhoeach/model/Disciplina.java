package com.cursinhoeach.cursinhoeach.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Disciplina {

	@Id
	private int id;
	private String nomedisciplina;
	private String grupoconteudo;
	private String conteudo;
	private String link;

	public Disciplina(int id, String nomeDisciplina, String grupoConteudo, String conteudo, String link) {
		this.id = id;
		this.nomedisciplina = nomeDisciplina;
		this.grupoconteudo = grupoConteudo;
		this.conteudo = conteudo;
		this.link = link;

	}

	public Disciplina() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getNomedisciplina() {
		return nomedisciplina;
	}

	public void setNomedisciplina(String nomedisciplina) {
		this.nomedisciplina = nomedisciplina;
	}

	public String getGrupoconteudo() {
		return grupoconteudo;
	}

	public void setGrupoconteudo(String grupoconteudo) {
		this.grupoconteudo = grupoconteudo;
	}

	public String getConteudo() {
		return conteudo;
	}

	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	@Override
	public String toString() {
		return "Disciplina [id=" + id + ", nomedisciplina=" + nomedisciplina
				+ ", grupoconteudo=" + grupoconteudo + ", conteudo=" + conteudo + ", link=" + link + "]";
	}

}
