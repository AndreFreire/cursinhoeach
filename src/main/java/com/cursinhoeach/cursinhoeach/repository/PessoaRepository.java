package com.cursinhoeach.cursinhoeach.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.cursinhoeach.cursinhoeach.model.Pessoa;

public interface PessoaRepository extends CrudRepository<Pessoa,Long>{
	
	@Query(value ="SELECT * FROM pessoa where cpf=:cpf",nativeQuery=true)
	Pessoa findPessoa(@Param("cpf") String cpf);

	
}
