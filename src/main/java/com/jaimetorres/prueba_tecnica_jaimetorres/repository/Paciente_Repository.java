package com.jaimetorres.prueba_tecnica_jaimetorres.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jaimetorres.prueba_tecnica_jaimetorres.entity.Paciente_Entity;

@Repository
public interface Paciente_Repository extends CrudRepository<Paciente_Entity, Integer> {

}
