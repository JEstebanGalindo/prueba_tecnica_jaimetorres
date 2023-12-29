package com.jaimetorres.prueba_tecnica_jaimetorres.entity;

import java.sql.Time;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "cita")
public class Cita_Entity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name = "id_paciente", referencedColumnName = "id")
	private Paciente_Entity paciente;
	
	@ManyToOne
	@JoinColumn(name = "id_medico", referencedColumnName = "id")
	private Medico_Entity medico;	
	
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	@Column(name="fecha")
	private Date fecha;
	
	@Column(name="hora")
	private Time hora;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Paciente_Entity getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente_Entity paciente) {
		this.paciente = paciente;
	}

	public Medico_Entity getMedico() {
		return medico;
	}

	public void setMedico(Medico_Entity medico) {
		this.medico = medico;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Time getHora() {
		return hora;
	}

	public void setHora(Time hora) {
		this.hora = hora;
	}

}
