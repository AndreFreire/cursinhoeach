package com.cursinhoeach.cursinhoeach.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class NotaControllerModel {

	private Map<String, List<Nota>> notas = new HashMap<>();
	private Map<String, List<String>> rows = new HashMap<>();
	Set<String> materia = new HashSet<String>();
	
	public NotaControllerModel(Iterable<Nota> nota) {
		for (Nota atual : nota) {
			this.addNota(atual.getSimulado(), atual);
			materia.add(atual.getMateria());
		}
		for(String simulado:notas.keySet()) {
			Set<String> materiasAux = new HashSet<>(materia);
			for(Nota notaAtual: notas.get(simulado)) {
				this.addRow(notaAtual.getMateria(), notaAtual.getNota());
				materiasAux.remove(notaAtual.getMateria());
			}
			for(String materiaFaltante : materiasAux) {
				this.addRow(materiaFaltante,"-");
			}
		}
	}
	
	public NotaControllerModel() {
		
	}
	
	public List<Nota> getNotas(String simulado){
		return notas.get(simulado);
	}
	
	public Set<String> getSimulados(){
		return notas.keySet();
	}
	
	public Map<String, List<String>> getRows(){
		return this.rows;
	}
	
	private void addRow(String materia, String pontuacao) {
		if (rows.get(materia) == null) {
			rows.put(materia, new ArrayList<String>());
		}
		rows.get(materia).add(pontuacao);
	}
	
	private void addNota(String simulado, Nota nota) {
		if (notas.get(simulado) == null) {
			notas.put(simulado, new ArrayList<Nota>());
		}
		notas.get(simulado).add(nota);
	}
	
	
}
