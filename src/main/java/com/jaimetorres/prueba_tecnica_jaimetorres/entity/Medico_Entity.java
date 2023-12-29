package com.jaimetorres.prueba_tecnica_jaimetorres.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "medico")
public class Medico_Entity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name="nro_licencia")
	private Integer nro_licencia;
	
	@Column(name="nombre", length = 30)
	private String nombre;
	
	@Column(name="apellido", length = 30)
	private String apellido;
	
	@Column(name="especialidad", length = 30)
	private String especialidad;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getNro_licencia() {
		return nro_licencia;
	}

	public void setNro_licencia(Integer nro_licencia) {
		this.nro_licencia = nro_licencia;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getEspecialidad() {
		return especialidad;
	}

	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}

}
