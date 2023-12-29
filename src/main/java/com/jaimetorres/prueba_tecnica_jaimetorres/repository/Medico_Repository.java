package com.jaimetorres.prueba_tecnica_jaimetorres.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jaimetorres.prueba_tecnica_jaimetorres.entity.Medico_Entity;

@Repository
public interface Medico_Repository extends CrudRepository<Medico_Entity, Integer> {

}
