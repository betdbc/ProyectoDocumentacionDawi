package net.farmacia.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.farmacia.entidad.Colegio;
import net.farmacia.entidad.Documentacion;
import net.farmacia.entidad.Ingreso;
import net.farmacia.service.ColegioService;
import net.farmacia.service.DocumentacionService;
import net.farmacia.service.IngresoService;

@ParentPackage("dawi")
public class IngresoAction extends ActionSupport {
	//REGISTRAR
	private Ingreso ingreso;
	
	//atributo para almacenar el sexo que se va a seleccionar del combo
	private String estado;
	
	//Consultar
	private List<Ingreso> listaIngreso;
	private List<Colegio>listaColegio;
	
	
	private IngresoService ingresoService;
	private ColegioService colegioService;
	
	private Map<String, Object> session=ActionContext.getContext().getSession();
	
	
	public IngresoAction() {
		ingresoService=new IngresoService();
		colegioService= new ColegioService();
	}
	
	
	@Action(value="/listAllColegios",results= {@Result(name="ok",type="json") })
	public String listAllColegios() {
		listaColegio= colegioService.listaColegio();
		return "ok";
	}
	
	@Action(value="/listAllIngreso",results= {@Result(name="ok",type="json") })
	public String listAllIngreso() {
		listaIngreso= ingresoService.listAllIngreso();
		return "ok";
	}

	
	@Action(value="/saveIngreso",results= {@Result(name="ok",type="redirect",location="/registrarIngreso.jsp") })
	public String saveIngreso() {
		int salida;
		salida=ingresoService.saveIngreso(ingreso);
		if(salida!=-1)
			session.put("MENSAJE", "Registro Ok");
		else
			session.put("MENSAJE", "Error");
		return "ok";
	}
	
	//REPORTE DOCUMENTACION POR ESTADO
	
		@Action(value="/reporteIngresoXestado",results= {@Result(
				params= {"location","/reportes/reporteIngresoXEstado.jasper",
						 "dataSource","listaIngreso",
						 "format","PDF"
						},
		name="ok",type="jasper") })
		
		public String reporteIngresoXestado() {
			listaIngreso=ingresoService.listarIngresoXestado(estado);
			return "ok";
		}



	public List<Ingreso> getListaIngreso() {
		return listaIngreso;
	}
	
	public void setListaIngreso(List<Ingreso> listaIngreso) {
		this.listaIngreso = listaIngreso;
	}



	public Ingreso getIngreso() {
		return ingreso;
	}
	public void setIngreso(Ingreso ingreso) {
		this.ingreso= ingreso;
	}


	public String getEstado() {
		return estado;
	}


	public void setEstado(String estado) {
		this.estado = estado;
	}


	
	

	

}
