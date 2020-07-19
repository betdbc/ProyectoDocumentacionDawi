package net.farmacia.service;

import java.util.List;

import net.farmacia.entidad.Colegio;
import net.farmacia.fabrica.DAOFactory;
import net.farmacia.interfaces.ColegioDAO;

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
