package com.jaimetorres.prueba_tecnica_jaimetorres;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.jaimetorres.prueba_tecnica_jaimetorres.dto.Medicamentos_DTO;
import com.jaimetorres.prueba_tecnica_jaimetorres.repository.Medicamento_Repository;

@SpringBootTest
class PruebaTecnicaJaimetorresApplicationTests {

	@Autowired
	private Medicamento_Repository serviceMedicamento;

	@Test
	public void buscarMedicamentosPorPaciente_DeberiaRetornarListaDeMedicamentos() {

		int idPaciente = 123456;
		List<Medicamentos_DTO> listaMedicamentos = serviceMedicamento.buscarMedicamentosPorPaciente(idPaciente);

		List<Medicamentos_DTO> listaMedicamentosEsperados = Arrays
				.asList(new Medicamentos_DTO(2, 2, 20, "Amoxaxilina"));

		assertEquals(listaMedicamentosEsperados.size(), listaMedicamentos.size());

		for (int i = 0; i < listaMedicamentosEsperados.size(); i++) {
			Medicamentos_DTO medicamentoObtenido = listaMedicamentos.get(i);
			Medicamentos_DTO medicamentoEsperado = listaMedicamentosEsperados.get(i);

			assertEquals(medicamentoEsperado.getId(), medicamentoObtenido.getId());
			assertEquals(medicamentoEsperado.getId_cita(), medicamentoObtenido.getId_cita());
			assertEquals(medicamentoEsperado.getNro_lote(), medicamentoObtenido.getNro_lote());
			assertEquals(medicamentoEsperado.getNombre(), medicamentoObtenido.getNombre());
		}
	}

	@Test
	public void testBuscarCitasPorFechaHoraMedico() {
		try {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");

			Date fecha = dateFormat.parse("2023-12-28");
			Time hora_inicio = new Time(timeFormat.parse("00:00:00").getTime());
			Time hora_fin = new Time(timeFormat.parse("22:00:00").getTime());
			Integer id_medico = 2;

			List<Object[]> listaCitasObtenidas = serviceMedicamento.buscarCitasPorFechaHoraMedico(fecha, hora_inicio,
					hora_fin, id_medico);
			List<Object[]> listaCitasEsperadas = new ArrayList<>();
			listaCitasEsperadas.add(new Object[] { "Paciente 1", "Apellido 1", "Medico 2" });

			assertEquals(listaCitasEsperadas.size(), listaCitasObtenidas.size());

			for (int i = 0; i < listaCitasEsperadas.size(); i++) {
				Object[] citaObtenida = listaCitasObtenidas.get(i);
				Object[] citaEsperada = listaCitasEsperadas.get(i);

				for (int j = 0; j < citaEsperada.length; j++) {
					assertEquals(citaEsperada[j], citaObtenida[j]);
				}
			}

		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testBuscarCitasPorFechaHora() {
		try {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");

			Date fecha = dateFormat.parse("2023-12-28");
			Time hora_inicio = new Time(timeFormat.parse("00:00:00").getTime());
			Time hora_fin = new Time(timeFormat.parse("08:00:00").getTime());

			List<Object[]> listaCitasObtenidas = serviceMedicamento.buscarCitasPorFechaHora(fecha, hora_inicio,
					hora_fin);
			List<Object[]> listaCitasEsperadas = new ArrayList<>();
			listaCitasEsperadas.add(new Object[] { "Paciente 1", "Apellido 1", "Medico 1" });

			assertEquals(listaCitasEsperadas.size(), listaCitasObtenidas.size());

			for (int i = 0; i < listaCitasEsperadas.size(); i++) {
				Object[] citaObtenida = listaCitasObtenidas.get(i);
				Object[] citaEsperada = listaCitasEsperadas.get(i);

				for (int j = 0; j < citaEsperada.length; j++) {
					assertEquals(citaEsperada[j], citaObtenida[j]);
				}
			}

		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

}
