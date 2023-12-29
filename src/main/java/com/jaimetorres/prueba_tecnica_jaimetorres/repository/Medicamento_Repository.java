package com.jaimetorres.prueba_tecnica_jaimetorres.repository;

import java.sql.Time;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.jaimetorres.prueba_tecnica_jaimetorres.dto.Medicamentos_DTO;
import com.jaimetorres.prueba_tecnica_jaimetorres.entity.Medicamento_Entity;

@Repository
public interface Medicamento_Repository extends CrudRepository<Medicamento_Entity, Integer> {
	
	@Query("SELECT NEW com.jaimetorres.prueba_tecnica_jaimetorres.dto.Medicamentos_DTO (m.id, m.cita.id, m.nro_lote, m.nombre)"
			+ "FROM Medicamento_Entity m "
			+ "INNER JOIN Cita_Entity c ON c.id = m.cita.id "
			+ "INNER JOIN Paciente_Entity p ON p.id = c.paciente.id "
			+ "WHERE p.nro_identificacion = :nro_identificacion")
	List<Medicamentos_DTO> buscarMedicamentosPorPaciente (@Param("nro_identificacion") int nro_identificacion);	
	
	@Query("SELECT p.nombre, p.apellido, m.nombre "
			+ "FROM Paciente_Entity p "
			+ "INNER JOIN Cita_Entity c ON c.paciente.id = p.id "
			+ "INNER JOIN Medico_Entity m ON m.id = c.medico.id "
			+ "WHERE c.fecha = :fecha AND c.hora BETWEEN :hora_inicio AND :hora_fin")
	List<Object[]> buscarCitasPorFechaHora (@Param("fecha") Date fecha, @Param("hora_inicio") Time hora_inicio,  @Param("hora_fin") Time hora_fin);
	
	@Query("SELECT p.nombre, p.apellido, m.nombre "
			+ "FROM Paciente_Entity p "
			+ "INNER JOIN Cita_Entity c ON c.paciente.id = p.id "
			+ "INNER JOIN Medico_Entity m ON m.id = c.medico.id "
			+ "WHERE c.fecha = :fecha AND c.hora BETWEEN :hora_inicio AND :hora_fin AND m.id = :id_medico")
	List<Object[]> buscarCitasPorFechaHoraMedico (@Param("fecha") Date fecha, @Param("hora_inicio") Time hora_inicio,  @Param("hora_fin") Time hora_fin, @Param("id_medico") int id_medico);
	
	
}
