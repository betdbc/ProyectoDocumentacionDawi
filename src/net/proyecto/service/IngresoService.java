package net.proyecto.service;

import java.util.List;

import net.proyecto.dao.MySqlColegioDAO;
import net.proyecto.dao.MySqlDocumentacionDAO;
import net.proyecto.dao.MySqlIngresoDAO;
import net.proyecto.entidad.Colegio;
import net.proyecto.entidad.Documentacion;
import net.proyecto.entidad.Ingreso;
import net.proyecto.fabrica.DAOFactory;
import net.proyecto.interfaces.DocumentacionDAO;
import net.proyecto.interfaces.IngresoDAO;

public class IngresoService {
	DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	IngresoDAO daoIngreso=fabrica.getIngresoDAO();
	
	private MySqlIngresoDAO daoIng;
	private MySqlColegioDAO daoCole;
	
	//
	public IngresoService() {
		daoIng=new MySqlIngresoDAO();
		daoCole= new MySqlColegioDAO();
	}
	
	public List<Ingreso> listarIngresoXestado(String estado){
		return daoIng.listaIngresoXestado(estado);
	}
	
	
	
	public List<Ingreso> listAllIngreso(){
		return daoIng.listaIngreso();
	}
	
	public List<Colegio> listarColegio(){
		return daoCole.listaColegio();
	}
	
	public int saveIngreso(Ingreso bean) {
		return daoIngreso.addIngreso(bean);
	}


	
	
}
