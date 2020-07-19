package net.farmacia.action;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.farmacia.entidad.Boleta;
import net.farmacia.entidad.Cliente;
import net.farmacia.entidad.Detalle;
import net.farmacia.entidad.Medicamento;
import net.farmacia.entidad.Usuario;
import net.farmacia.service.BoletaService;
import net.farmacia.service.MedicamentoService;

@ParentPackage("dawi")
public class BoletaAction extends ActionSupport{
	//lista de clientes
	private List<Cliente> listaClientes;
	//lista de Medicamentos
	private List<Medicamento> listaMedicamentos;
	//lista de la clase Deatlle
	private List<Detalle> listaDetalle;
	//atributos para adicionar
	private int codigo,cantidad;
	private String descripcion;
	private double precio;
	//
	private int codigoLaboratorio;
	
	//para leer el codigo del cliente
	private int codigoCliente;
	
	//mensaje si existe el medicamento
	private String mensajeMedicamento;
	
	//
	private BoletaService boletaService; 
	//
	private MedicamentoService medicamentoService;
	
	//atributo tipo sesión
	private Map<String, Object> session=(Map<String, Object>)ActionContext.getContext().getSession();

		
	
	
	//
	public BoletaAction() {
		boletaService=new BoletaService();
		medicamentoService=new MedicamentoService();
	}
	
	//acción que retorna JSON
	@Action(value="/listAllClientes",results= {@Result(name="ok",type="json") })
	public String listAllClientes() {
		listaClientes=boletaService.listarClientes();
		return "ok";
	}
	//acción que retorna JSON
	@Action(value="/listAllMedicamentoAtLaboratorio",results= {@Result(name="ok",type="json") })
	public String listAllMedicamentoAtLaboratorio() {
		listaMedicamentos=medicamentoService.
				listConsultaMedicamentoPorLaboratorio(codigoLaboratorio);
		return "ok";
	}
	@Action(value="/validarMedicamento",results= {@Result(name="ok",type="json") })
	public String validarMedicamento() {
		mensajeMedicamento=null;
		//validar si existe la clave "detalle" de tipo session
		if(session.get("detalle")!=null) {
			//recuperar la clave detalle
			listaDetalle=(List<Detalle>) session.get("detalle");
			//bucle
			for(Detalle d:listaDetalle) {
				if(d.getCodigoMedicamento()==codigo) {
					mensajeMedicamento="Existe medicamento en el detalle";
					break;
				}
			}	
		
		}
		return "ok";
	}
	
	
	
	//acción que retorna JSON
	@Action(value="/adicionar",results= {@Result(name="ok",type="json") })
	public String adicionar() {
		//validar si existe la clave "detalle" de tipo session
		if(session.get("detalle")==null)
			listaDetalle=new ArrayList<Detalle>();
		else
			//recuperar la clave detalle
			listaDetalle=(List<Detalle>) session.get("detalle");
		
		//crear objeto de la clase Detalle
		Detalle det=new Detalle();
		//setear el objeto "det"
		det.setCodigoMedicamento(codigo);
		det.setDescripcion(descripcion);
		det.setPrecio(precio);
		det.setCantidad(cantidad);
		//adicionar el objeto "det" dentro de listaDetalle
		listaDetalle.add(det);
		//crear o actualizar la clave "detalle"
		session.put("detalle", listaDetalle);
		return "ok";
	}
	//
	@Action(value="/grabarBoleta",results= {@Result(name="ok",type="redirect",location="/boleta.jsp")})
	public String grabarBoleta() {
		//CABECERA
		//recuperar la clave USUARIO
		Usuario usu=(Usuario) session.get("USUARIO");
		//crear objeto de la clase Boleta
		Boleta bol=new Boleta();
		bol.setCodigoUsuario(usu.getCodigoUsuario());
		bol.setCodigoCliente(codigoCliente);
		//recuperar la clave "detalle"
		listaDetalle=(List<Detalle>) session.get("detalle");
		boletaService.adicionarBoleta(bol, listaDetalle);
		//limpiar la clave "detalle"
		listaDetalle.clear();
		//actualizar la clave "detalle"
		session.put("detalle", listaDetalle);
		return "ok";
	}
	//
	@Action(value="/mostrarCompra",results= {@Result(name="ok",type="json") })
	public String mostrarCompra() {
		//validar si existe la clave "detalle" de tipo session
		if(session.get("detalle")!=null)
			//recuperar la clave detalle
			listaDetalle=(List<Detalle>) session.get("detalle");
		else
			listaDetalle=null;
		//crear o actualizar la clave "detalle"
		session.put("detalle", listaDetalle);
		return "ok";
	}
	@Action(value="/eliminarMedicamento",results= {@Result(name="ok",type="json") })
	public String eliminarMedicamento() {
		//validar si existe la clave "detalle" de tipo session
		if(session.get("detalle")!=null) {
			//recuperar la clave detalle
			listaDetalle=(List<Detalle>) session.get("detalle");
			//bucle
			for(Detalle d:listaDetalle) {
				if(d.getCodigoMedicamento()==codigo) {
					listaDetalle.remove(d);
					break;
				}
			}		
		}
		//crear o actualizar la clave "detalle"
		session.put("detalle", listaDetalle);
		return "ok";
	}
	
	//
	double total() {
		double suma=0;
		listaDetalle=(List<Detalle>) session.get("detalle");
		if(listaDetalle!=null) {
			for(Detalle det:listaDetalle)
				suma+=det.getImporte();
		}
		return suma;
	}
	
	
	public List<Cliente> getListaClientes() {
		return listaClientes;
	}
	public void setListaClientes(List<Cliente> listaClientes) {
		this.listaClientes = listaClientes;
	}

	public List<Medicamento> getListaMedicamentos() {
		return listaMedicamentos;
	}

	public void setListaMedicamentos(List<Medicamento> listaMedicamentos) {
		this.listaMedicamentos = listaMedicamentos;
	}

	public int getCodigoLaboratorio() {
		return codigoLaboratorio;
	}

	public void setCodigoLaboratorio(int codigoLaboratorio) {
		this.codigoLaboratorio = codigoLaboratorio;
	}

	public List<Detalle> getListaDetalle() {
		return listaDetalle;
	}

	public void setListaDetalle(List<Detalle> listaDetalle) {
		this.listaDetalle = listaDetalle;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getCodigoCliente() {
		return codigoCliente;
	}

	public void setCodigoCliente(int codigoCliente) {
		this.codigoCliente = codigoCliente;
	}

	public String getMensajeMedicamento() {
		return mensajeMedicamento;
	}

	public void setMensajeMedicamento(String mensajeMedicamento) {
		this.mensajeMedicamento = mensajeMedicamento;
	}
	
}






