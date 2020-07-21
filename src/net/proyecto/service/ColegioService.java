package net.proyecto.service;

import java.util.List;

import net.proyecto.entidad.Colegio;
import net.proyecto.fabrica.DAOFactory;
import net.proyecto.interfaces.ColegioDAO;

public class ColegioService {
	DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	ColegioDAO daoColegio=fabrica.getColegioDAO();
	
	public List<Colegio> listaColegio(){
		return daoColegio.listaColegio();
	}
	
	public List<Colegio> listaColegiocombo(){
		return daoColegio.listacombo();
	}
	
	public int saveColegio(Colegio bean) {
		return daoColegio.saveColegio(bean);
	}
	
	
}
