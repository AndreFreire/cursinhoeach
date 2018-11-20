package com.cursinhoeach.cursinhoeach.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.cursinhoeach.cursinhoeach.model.Disciplina;

public interface DisciplinaRepository extends CrudRepository<Disciplina, Integer> {

	@Query(value = "SELECT * FROM disciplina where nomeDisciplina=:nomeDisciplina", nativeQuery = true)
	List<Disciplina> findMateria(@Param("nomeDisciplina") String nomeDisciplina);

	@Query(value = "SELECT nomedisciplina FROM disciplina where idpessoa=:id limit 1", nativeQuery = true)
	String findProfessorDisciplina(@Param("id") String id);

	@Query(value = "SELECT id+1 FROM disciplina order by id DESC limit 1", nativeQuery = true)
	int finalKey();
	
}
