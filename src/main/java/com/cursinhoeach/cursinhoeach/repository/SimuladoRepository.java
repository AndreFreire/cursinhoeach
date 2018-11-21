package com.cursinhoeach.cursinhoeach.repository;

import org.springframework.data.repository.CrudRepository;

import com.cursinhoeach.cursinhoeach.composite.keys.SimuladoKey;
import com.cursinhoeach.cursinhoeach.model.Simulado;

public interface SimuladoRepository extends CrudRepository<Simulado,SimuladoKey>{
	
}
