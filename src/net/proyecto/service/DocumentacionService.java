package net.proyecto.service;

import java.util.List;

import net.proyecto.dao.MySqlColegioDAO;
import net.proyecto.dao.MySqlDocumentacionDAO;
import net.proyecto.entidad.Colegio;
import net.proyecto.entidad.Documentacion;
import net.proyecto.fabrica.DAOFactory;
import net.proyecto.interfaces.DocumentacionDAO;

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
