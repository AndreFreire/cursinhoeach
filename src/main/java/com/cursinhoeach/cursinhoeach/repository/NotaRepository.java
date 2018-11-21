package com.cursinhoeach.cursinhoeach.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.cursinhoeach.cursinhoeach.composite.keys.NotaKey;
import com.cursinhoeach.cursinhoeach.model.Nota;

public interface NotaRepository extends CrudRepository<Nota,NotaKey> {
	
	@Query(value = "SELECT * FROM nota where pessoaid=:pessoa", nativeQuery = true)
	List<Nota> findNotasPessoa(@Param("pessoa") String pessoa);
	
	
}
