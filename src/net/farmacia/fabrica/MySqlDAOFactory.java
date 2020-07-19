package net.farmacia.fabrica;


import net.farmacia.dao.MySqlColegioDAO;
import net.farmacia.dao.MySqlDocumentacionDAO;
import net.farmacia.dao.MySqlIngresoDAO;

import net.farmacia.dao.MySqlUsuarioDAO;

import net.farmacia.interfaces.ColegioDAO;
import net.farmacia.interfaces.DocumentacionDAO;
import net.farmacia.interfaces.IngresoDAO;
import net.farmacia.interfaces.UsuarioDAO;

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
