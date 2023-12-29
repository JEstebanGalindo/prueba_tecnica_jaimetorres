package com.jaimetorres.prueba_tecnica_jaimetorres.controller;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jaimetorres.prueba_tecnica_jaimetorres.repository.Medicamento_Repository;

@RestController
@RequestMapping("/medicamentos")
public class Medicamentos_Controller {
	
	@Autowired
	private Medicamento_Repository serviceMedicamento;
	
	@GetMapping(path = "/buscarMedicamentosPorPaciente/{id_paciente}") 
	public List<?> buscarMedicamentosPorPaciente(@PathVariable int id_paciente) {
		return serviceMedicamento.buscarMedicamentosPorPaciente(id_paciente);
	}
	
	@GetMapping(path = "/buscarCitasPorFechaHora/{fecha}/{hora_inicio}/{hora_fin}") 
	public List<?> buscarCitasPorFechaHora(@PathVariable String fecha, @PathVariable String hora_inicio, @PathVariable String hora_fin) {
		try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");

            Date fechaDate = dateFormat.parse(fecha);
            Time horaInicioTime = new Time(timeFormat.parse(hora_inicio).getTime());
            Time horaFinTime = new Time(timeFormat.parse(hora_fin).getTime());

            return serviceMedicamento.buscarCitasPorFechaHora(fechaDate, horaInicioTime, horaFinTime);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
	}
	
	@GetMapping(path = "/buscarCitasPorFechaHoraMedico/{fecha}/{hora_inicio}/{hora_fin}/{id_medico}") 
	public List<?> buscarCitasPorFechaHoraMedico(@PathVariable String fecha, @PathVariable String hora_inicio, @PathVariable String hora_fin, @PathVariable int id_medico) {
		try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");

            Date fechaDate = dateFormat.parse(fecha);
            Time horaInicioTime = new Time(timeFormat.parse(hora_inicio).getTime());
            Time horaFinTime = new Time(timeFormat.parse(hora_fin).getTime());

            return serviceMedicamento.buscarCitasPorFechaHoraMedico(fechaDate, horaInicioTime, horaFinTime, id_medico);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
	}

}
