package com.cursinhoeach.cursinhoeach.composite.keys;

import java.io.Serializable;

public class DisciplinaKey implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String disciplina;
	private String grupo;
	private String conteudo;
	
	public String getDisciplina() {
		return disciplina;
	}
	public void setDisciplina(String disciplina) {
		this.disciplina = disciplina;
	}
	public String getGrupo() {
		return grupo;
	}
	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}
	public String getConteudo() {
		return conteudo;
	}
	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}

	
	
}
