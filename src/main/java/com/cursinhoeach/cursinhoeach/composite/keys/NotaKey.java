package com.cursinhoeach.cursinhoeach.composite.keys;

import java.io.Serializable;

public class NotaKey implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String simulado;
	private String pessoaId;
	private String materia;
	
	public String getSimulado() {
		return simulado;
	}
	public void setSimulado(String simulado) {
		this.simulado = simulado;
	}
	public String getPessoaId() {
		return pessoaId;
	}
	public void setPessoaId(String pessoaId) {
		this.pessoaId = pessoaId;
	}
	public String getMateria() {
		return materia;
	}
	public void setMateria(String materia) {
		this.materia = materia;
	}
	
}
