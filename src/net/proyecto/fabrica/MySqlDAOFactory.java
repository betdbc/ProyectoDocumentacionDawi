package net.proyecto.fabrica;


import net.proyecto.dao.MySqlColegioDAO;
import net.proyecto.dao.MySqlDocumentacionDAO;
import net.proyecto.dao.MySqlIngresoDAO;
import net.proyecto.dao.MySqlUsuarioDAO;
import net.proyecto.interfaces.ColegioDAO;
import net.proyecto.interfaces.DocumentacionDAO;
import net.proyecto.interfaces.IngresoDAO;
import net.proyecto.interfaces.UsuarioDAO;

public class MySqlDAOFactory extends DAOFactory {


	@Override
	public UsuarioDAO getUsuarioDAO() {
		// TODO Auto-generated method stub
		return new MySqlUsuarioDAO();
	}

	
	@Override
	public DocumentacionDAO getDocumentacionDAO() {
		// TODO Auto-generated method stub
		return new MySqlDocumentacionDAO();
	}

	@Override
	public ColegioDAO getColegioDAO() {
		// TODO Auto-generated method stub
		return new MySqlColegioDAO();
	}

	@Override
	public IngresoDAO getIngresoDAO() {
		// TODO Auto-generated method stub
		return new MySqlIngresoDAO();
	}





}
