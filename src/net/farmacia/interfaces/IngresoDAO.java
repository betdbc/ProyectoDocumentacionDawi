package net.farmacia.interfaces;

import java.util.List;

import net.farmacia.entidad.Ingreso;

public interface IngresoDAO {
	
	public List<Ingreso> listaIngreso();
	public int addIngreso(Ingreso ing);

	public int updateIngreso(Ingreso ing);
	public int deleteIngreso(int id);
	
	public List<Ingreso> listaIngresoXestado(String estado);


}
