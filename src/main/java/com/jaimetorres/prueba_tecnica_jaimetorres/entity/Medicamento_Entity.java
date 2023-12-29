package com.jaimetorres.prueba_tecnica_jaimetorres.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "medicamento")
public class Medicamento_Entity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name = "id_cita", referencedColumnName = "id")
	private Cita_Entity cita;
	
	@Column(name="nro_lote")
	private Integer nro_lote;
	
	@Column(name="nombre", length = 30)
	private String nombre;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Cita_Entity getCita() {
		return cita;
	}

	public void setCita(Cita_Entity cita) {
		this.cita = cita;
	}

	public Integer getNro_lote() {
		return nro_lote;
	}

	public void setNro_lote(Integer nro_lote) {
		this.nro_lote = nro_lote;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}
