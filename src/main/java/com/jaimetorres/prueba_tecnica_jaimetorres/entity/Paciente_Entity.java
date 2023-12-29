package com.jaimetorres.prueba_tecnica_jaimetorres.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "paciente")
public class Paciente_Entity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name="nro_identificacion")
	private Integer nro_identificacion;
	
	@Column(name="nombre", length = 30)
	private String nombre;
	
	@Column(name="apellido", length = 30)
	private String apellido;
	
	@Column(name="edad")
	private Integer edad;
	
	@Column(name="genero", length = 10)
	private String genero;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getNro_identificacion() {
		return nro_identificacion;
	}

	public void setNro_identificacion(Integer nro_identificacion) {
		this.nro_identificacion = nro_identificacion;
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

	public Integer getEdad() {
		return edad;
	}

	public void setEdad(Integer edad) {
		this.edad = edad;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}	

}
