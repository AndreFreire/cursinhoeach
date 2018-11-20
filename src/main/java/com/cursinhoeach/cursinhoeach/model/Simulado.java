package com.cursinhoeach.cursinhoeach.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

import com.cursinhoeach.cursinhoeach.composite.keys.SimuladoKey;


@Entity
@IdClass(SimuladoKey.class)
public class Simulado {
	
	@Id
	private String nome;
	@Id
	private String materia;
	private String notamax;

	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getMateria() {
		return materia;
	}
	public void setMateria(String materia) {
		this.materia = materia;
	}
	public String getNotamax() {
		return notamax;
	}
	public void setNotamax(String notamax) {
		this.notamax = notamax;
	}
		
	
}
