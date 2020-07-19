package net.farmacia.service;

import java.util.List;

import net.farmacia.entidad.Boleta;
import net.farmacia.entidad.Cliente;
import net.farmacia.entidad.Detalle;
import net.farmacia.fabrica.DAOFactory;
import net.farmacia.interfaces.BoletaDAO;
import net.farmacia.interfaces.ClienteDAO;

public class BoletaService {
	DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	ClienteDAO daoCliente=fabrica.getClienteDAO();
	BoletaDAO daoBoleta=fabrica.getBoletaDAO();
	
	public List<Cliente> listarClientes(){
		return daoCliente.listaClientes();	
	}
	public int adicionarBoleta(Boleta bean, List<Detalle> lista) {
		return daoBoleta.registrarBoleta(bean, lista);
	}
	

	
}
