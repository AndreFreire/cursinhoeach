package com.cursinhoeach.cursinhoeach.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

import com.cursinhoeach.cursinhoeach.composite.keys.NotaKey;

@Entity
@IdClass(NotaKey.class)
public class Nota {
	
	@Id
	private String simulado;
	@Id
	private String pessoaid;
	@Id
	private String materia;
	private String nota;
	
	public String getSimulado() {
		return simulado;
	}
	public void setSimulado(String simulado) {
		this.simulado = simulado;
	}
	public String getPessoaid() {
		return pessoaid;
	}
	public void setPessoaid(String pessoaid) {
		this.pessoaid = pessoaid;
	}
	public String getMateria() {
		return materia;
	}
	public void setMateria(String materia) {
		this.materia = materia;
	}
	public String getNota() {
		return nota;
	}
	public void setNota(String nota) {
		this.nota = nota;
	}
	
	
}
