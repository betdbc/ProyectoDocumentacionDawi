package net.farmacia.service;

import java.util.List;

import net.farmacia.entidad.Boleta;
import net.farmacia.entidad.Cliente;
import net.farmacia.entidad.Detalle;
import net.farmacia.fabrica.DAOFactory;
import net.farmacia.interfaces.BoletaDAO;
import net.farmacia.interfaces.ClienteDAO;

public class ClienteService {
	DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	ClienteDAO daoCliente=fabrica.getClienteDAO();
		
	
	public List<Cliente> listarClientesXSexo(String sexo){
		return daoCliente.listaClientesXSexo(sexo);	
	}
	

	
}
