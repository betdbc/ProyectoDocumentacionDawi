package net.farmacia.entidad;

import java.util.Date;

public class Ingreso {
	private int codigoIngreso, codigocolegio;
	private String estado, nomCole, asunto;
	private Date fecha;
	
	public int getCodigoIngreso() {
		return codigoIngreso;
	}
	public void setCodigoIngreso(int codigoIngreso) {
		this.codigoIngreso = codigoIngreso;
	}
	public int getCodigocolegio() {
		return codigocolegio;
	}
	public void setCodigocolegio(int codigocolegio) {
		this.codigocolegio = codigocolegio;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getNomCole() {
		return nomCole;
	}
	public void setNomCole(String nomCole) {
		this.nomCole = nomCole;
	}
	public String getAsunto() {
		return asunto;
	}
	public void setAsunto(String asunto) {
		this.asunto = asunto;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	
	
	
	
	
	

}
