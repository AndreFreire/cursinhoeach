package com.cursinhoeach.cursinhoeach.controller.file;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.cursinhoeach.cursinhoeach.model.Nota;

public class FileReader {

	private List<String> csvContent = new ArrayList<>();
	private String nomeSimulado;

	public FileReader(MultipartFile file) {
		nomeSimulado = file.getOriginalFilename();
		if (!nomeSimulado.endsWith(".csv")) {
			return;
		}
		nomeSimulado = nomeSimulado.replace(".csv", "");
		BufferedReader br;
		try {
			String line;
			InputStream is = file.getInputStream();
			br = new BufferedReader(new InputStreamReader(is));
			while ((line = br.readLine()) != null) {
				csvContent.add(line);
			}

		} catch (IOException e) {
			System.err.println(e.getMessage());
		}
	}

	public FileReader() {

	}

	public String[] getDisciplinas() {
		String result = csvContent.get(0).replaceFirst("\\w+;?(?=.*)", "");
		return result.split(";");
	}

	private List<String> getNotasFromCsv() {
		List<String> aux = new ArrayList<>(csvContent);
		aux.remove(0);
		return aux;
	}

	public List<Nota> getNotasAlunos() {
		List<Nota> result = new ArrayList<>();
		for (String notaAtual : this.getNotasFromCsv()) {
			String[] linha = notaAtual.split(";");
			if(linha.length<=0) {
				continue;
			}
			String pessoaId = linha[0].split("-")[0];
			int i = 1;
			for (String item : this.getDisciplinas()) {
				Nota notaAluno = new Nota();
				notaAluno.setPessoaid(pessoaId);
				notaAluno.setSimulado(nomeSimulado);
				notaAluno.setMateria(item);
				if (i >= linha.length) {
					notaAluno.setNota("-");
				} else {
					notaAluno.setNota(linha[i]);
				}
				i++;
				result.add(notaAluno);
			}
		}
		return result;
	}

	public String getSimuladoName() {
		return nomeSimulado;
	}

	public void setSimuladoName(String simuladoName) {
		this.nomeSimulado = simuladoName;
	}

}
