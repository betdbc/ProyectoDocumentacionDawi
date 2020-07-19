package net.farmacia.action;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import net.farmacia.entidad.Cliente;
import net.farmacia.service.ClienteService;

@ParentPackage("dawi")
public class ClienteAction extends ActionSupport{
	
	//atributo de lista de clientes
	private List<Cliente> listaClientes;
	//atributo para almacenar el sexo que se va a seleccionar del combo
	private String sexo;
	
	//servicio
	private ClienteService clienteService;
	
	public ClienteAction() {
		clienteService=new ClienteService();
	}
	
	@Action(value="/reporteClienteXSexo",results= {@Result(
														params= {"location","/reportes/reporteClienteXSexo.jasper",
																 "dataSource","listaClientes",
																 "format","PDF"
																},
												name="ok",type="jasper") })
	public String reporteClienteXSexo() {
		listaClientes=clienteService.listarClientesXSexo(sexo);
		return "ok";
	}
	
	
	
	public List<Cliente> getListaClientes() {
		return listaClientes;
	}
	public void setListaClientes(List<Cliente> listaClientes) {
		this.listaClientes = listaClientes;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
}
