package com.cursinhoeach.cursinhoeach.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.cursinhoeach.cursinhoeach.model.Disciplina;


public interface DisciplinaRepository extends CrudRepository<Disciplina,Long> {
	
	@Query(value ="SELECT * FROM disciplina where disciplina=:subject",nativeQuery=true)
	List<Disciplina> findMateria(@Param("subject") String subject);

}
