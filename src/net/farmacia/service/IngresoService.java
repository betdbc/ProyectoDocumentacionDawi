package net.farmacia.service;

import java.util.List;

import net.farmacia.dao.MySqlColegioDAO;
import net.farmacia.dao.MySqlDocumentacionDAO;
import net.farmacia.dao.MySqlIngresoDAO;
import net.farmacia.entidad.Colegio;
import net.farmacia.entidad.Documentacion;
import net.farmacia.entidad.Ingreso;
import net.farmacia.fabrica.DAOFactory;
import net.farmacia.interfaces.DocumentacionDAO;
import net.farmacia.interfaces.IngresoDAO;

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
