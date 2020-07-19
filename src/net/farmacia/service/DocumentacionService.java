package net.farmacia.service;

import java.util.List;

import net.farmacia.dao.MySqlColegioDAO;
import net.farmacia.dao.MySqlDocumentacionDAO;
import net.farmacia.entidad.Colegio;
import net.farmacia.entidad.Documentacion;
import net.farmacia.fabrica.DAOFactory;
import net.farmacia.interfaces.DocumentacionDAO;

public class DocumentacionService {
	DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	DocumentacionDAO daoDocumentacion=fabrica.getDocumentacionDAO();
	
	private MySqlColegioDAO daoCole;
	private MySqlDocumentacionDAO daoDoc;
	
	//
	public DocumentacionService() {
		daoCole=new MySqlColegioDAO();
		daoDoc= new MySqlDocumentacionDAO();
	}
	
	
	
	public List<Colegio> listAllColegio(){
		return daoCole.listaColegio();
	}
	
	public List<Documentacion> listarDocumentacion(){
		return daoDoc.listaDocumentacion();
	}
	
	public int saveDocumentacion(Documentacion bean) {
		return daoDocumentacion.addDocumentacion(bean);
	}


	
	
}
