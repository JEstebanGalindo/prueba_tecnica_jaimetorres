package com.jaimetorres.prueba_tecnica_jaimetorres.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jaimetorres.prueba_tecnica_jaimetorres.entity.Cita_Entity;

@Repository
public interface Cita_Repository extends CrudRepository<Cita_Entity, Integer> {

}
