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
	private String notaMax;
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
	public String getNotaMax() {
		return notaMax;
	}
	public void setNotaMax(String notaMax) {
		this.notaMax = notaMax;
	}
	
	
}
