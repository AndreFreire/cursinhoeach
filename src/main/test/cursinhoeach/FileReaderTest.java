package cursinhoeach;

import static org.junit.Assert.assertEquals;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.mock.web.MockMultipartFile;

import com.cursinhoeach.cursinhoeach.controller.file.FileReader;
import com.cursinhoeach.cursinhoeach.model.Nota;

public class FileReaderTest {
	FileReader fileReader;

	public FileReaderTest() {
		Path path = Paths
				.get("C:\\Users\\henri\\Desktop\\solucoesweb\\cursinhoeach\\src\\main\\resources\\test\\teste.csv");
		String name = "test.csv";
		String originalFileName = "test.csv";
		String contentType = "text/plain";
		byte[] content = null;
		try {
			content = Files.readAllBytes(path);
		} catch (final IOException e) {
		}
		fileReader = new FileReader(new MockMultipartFile(name, originalFileName, contentType, content));

	}

	@Test
	public void fileReaderDisciplinas() {
		String[] result = fileReader.getDisciplinas();
		String[] expected = {  "Português", "Matematica", "Geografia" };
		Assert.assertArrayEquals(expected, result);
	}

	@Test
	public void fileNotasAlunos() {
		String notas[] = new String[6];
		notas[0]="Nota [simulado=test, pessoaid=123, materia=Português, nota=1]";
		notas[1]="Nota [simulado=test, pessoaid=123, materia=Matematica, nota=2]";
		notas[2]="Nota [simulado=test, pessoaid=123, materia=Geografia, nota=3]";
		notas[3]="Nota [simulado=test, pessoaid=456 , materia=Português, nota=4]";
		notas[4]="Nota [simulado=test, pessoaid=456 , materia=Matematica, nota=]";
		notas[5]="Nota [simulado=test, pessoaid=456 , materia=Geografia, nota=5]";
		
		List<Nota> notasAlunos = fileReader.getNotasAlunos();
		int i =0;
		for (Nota atual : notasAlunos) {
			assertEquals(atual.toString(),notas[i]);
			i++;
		}

		// Assert.assertArrayEquals(expected,result);
	}
	
}
