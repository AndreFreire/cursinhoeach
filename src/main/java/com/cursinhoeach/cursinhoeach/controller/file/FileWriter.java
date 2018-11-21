package com.cursinhoeach.cursinhoeach.controller.file;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import com.cursinhoeach.cursinhoeach.model.Pessoa;

public class FileWriter {

	String materias = "Alunos,Português,Matemática,História,Geografia,Biologia,Filosofia,Sociologia,Literatura,Química,Física,Inglês\n";

	List<String> lines = new ArrayList<>();
	InputStream in;
	
	public FileWriter(List<Pessoa> alunos) {
		lines.add(materias);
		for (Pessoa pessoa : alunos) {
			lines.add(pessoa.getId() + "-" + pessoa.getNome() + " " + pessoa.getSobrenome()+"\n");
		}
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		for (String line : lines) {
			try {
				baos.write(line.getBytes());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		 in = new ByteArrayInputStream(baos.toByteArray());
	}
	
	public InputStream getInputStream() {
		
		return in;
	}
}
