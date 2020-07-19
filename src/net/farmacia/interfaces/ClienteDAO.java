package net.farmacia.interfaces;

import java.util.List;

import net.farmacia.entidad.Cliente;

public interface ClienteDAO {
	public List<Cliente> listaClientes();
	public List<Cliente> listaClientesXSexo(String vSexo);
}
