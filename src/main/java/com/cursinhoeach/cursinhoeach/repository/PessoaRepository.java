package com.cursinhoeach.cursinhoeach.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.cursinhoeach.cursinhoeach.model.Pessoa;

public interface PessoaRepository extends CrudRepository<Pessoa,String>{
	
	@Query(value ="SELECT * FROM pessoa where id=:id",nativeQuery=true)
	Pessoa findPessoa(@Param("id") String id);

	@Query(value ="SELECT * FROM pessoa where tipo=0",nativeQuery=true)
	List<Pessoa> findAlunos();

	
}
