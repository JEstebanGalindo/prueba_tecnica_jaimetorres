package com.jaimetorres.prueba_tecnica_jaimetorres.dto;

public class Medicamentos_DTO {

	private Integer id; 
	
	private Integer id_cita;
	
	private Integer nro_lote;
	
	private String nombre;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getId_cita() {
		return id_cita;
	}
	public void setId_cita(Integer id_cita) {
		this.id_cita = id_cita;
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
	
	public Medicamentos_DTO(Integer id, Integer id_cita, Integer nro_lote, String nombre) {
		super();
		this.id = id;
		this.id_cita = id_cita;
		this.nro_lote = nro_lote;
		this.nombre = nombre;
	}
	
	public Medicamentos_DTO() {
		super();
	}
	
}
