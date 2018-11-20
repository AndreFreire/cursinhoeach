package com.cursinhoeach.cursinhoeach.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DisciplinaControllerModel {

	private Map<String, List<Disciplina>> subject = new HashMap<>();
	private String materia;
	
	public DisciplinaControllerModel(Iterable<Disciplina> disciplina) {
		for (Disciplina atual : disciplina) {
			addSubject(atual.getGrupoconteudo(), atual);
		}
	}
	
	DisciplinaControllerModel() {

	}

	public List<String> getSubjectsTitle() {
		List<String> subjectTitle = new ArrayList<>();
		subjectTitle.addAll(subject.keySet());
		return subjectTitle;
	}

	public List<Disciplina> getSubjectContent(String title) {
		return subject.get(title);
	}

	private void addSubject(String title, Disciplina disciplina) {
		if (subject.get(title) == null) {
			subject.put(title, new ArrayList<Disciplina>());
		}
		subject.get(title).add(disciplina);
	}

	public String getMateria() {
		return materia;
	}

	public void setMateria(String materia) {
		this.materia = materia;
	}

}
