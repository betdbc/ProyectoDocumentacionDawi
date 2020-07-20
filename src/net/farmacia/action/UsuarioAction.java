package net.farmacia.action;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.dispatcher.SessionMap;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.farmacia.entidad.Enlace;
import net.farmacia.entidad.Usuario;
import net.farmacia.service.UsuarioService;
@ParentPackage("dawi")
public class UsuarioAction extends ActionSupport{
	//atributos para la sesión
	private String login,clave;
	//ListarUsuario
	private List<Usuario> listaUsuario;
	private Usuario usuario;
	private int codUsuario;
	
	
	//atributo del servicio
	private UsuarioService servicioUsuario;
	
	//atributo tipo sesión
	private Map<String, Object> session=(Map<String, Object>)ActionContext.getContext().getSession();

	
	//constructor
	public UsuarioAction() {
		servicioUsuario=new UsuarioService();
	}
	
	//acción para iniciar sesión
	@Action(value="/iniciarSesion",results= {
												@Result(name="ok",type="redirect",location="/menu.jsp"),
												@Result(name="error",type="redirect",location="/login.jsp")
											})
	public String iniciarSesion() {
		//crear un objeto de la clase usuario y setear los atributos login y clave
		Usuario obj=new Usuario();
		obj.setLogin(login);
		obj.setClave(clave);
		//invocar al método iniciarSesion
		Usuario bean=servicioUsuario.iniciarSesion(obj);
		//validar el objeto "bean"
		if(bean==null) {
			session.put("MENSAJE", "Usuario y/o clave incorrectos...");
			return "error";
		}
		else {
			//traer los enlances según el código del usuario
			List<Enlace> listaEnlaces=servicioUsuario.traerEnlancesPorUsuario(bean.getCodigoUsuario());
			//crear atributo
			session.put("ENLACES", listaEnlaces);
			session.put("USUARIO",bean);
			return "ok";
		}
	}	
	//acción para cerrar sesión
	@Action(value="/cerrarSesion",results= {@Result(name="ok",type="redirect",location="/login.jsp")})
	public String cerarrSesion() {
		//obtener la sesión actual
		SessionMap sessionActual=(SessionMap) ActionContext.getContext().getSession();
		sessionActual.invalidate();
		return "ok";
	}
	
	//crear una acción que retorne un JSON
		@Action(value="/listAllUsuarios",results= {@Result(name="ok",type="json") })
		public String listAllUsuarios() {
			listaUsuario=servicioUsuario.listAllUsuario();
			return "ok";
		}
	
		@Action(value="/saveUsuario",results= {@Result(name="ok",type="redirect",location="/MantenimientoUsuario.jsp") })
		public String saveUsuario() {
			int salida;
			salida=servicioUsuario.save(usuario);
			if(salida!=-1)
				session.put("MENSAJE", "Registro Ok");
			else
				session.put("MENSAJE", "Error");
			return "ok";
		}
		
		//crear una acción para actualizar medicamento
				@Action(value="/updateUsuario",results= {@Result(name="ok",type="redirect",location="/MantenimientoUsuario.jsp") })
				public String updateUsuario() {
					int estado;
					estado=servicioUsuario.update(usuario);
					if(estado!=-1)
						session.put("MENSAJE", "Se actualizo correctamente el usuario");
					else
						session.put("MENSAJE", "Error en la actualización del usuario");
					return "ok";
				}
				
				//crear una acción para eliminar medicamento
				@Action(value="/deleteUsuario",results= {@Result(name="ok",type="redirect",location="/MantenimientoUsuario.jsp") })
				public String deleteMedicamento() {
					int estado;
					estado=servicioUsuario.delete(codUsuario);
					if(estado!=-1)
						session.put("MENSAJE", "Se elimino correctamente el usuario");
					else
						session.put("MENSAJE", "Error en la eliminación del usuario");
					return "ok";
				}

	
				
				
	
	
	public List<Usuario> getListaUsuario() {
					return listaUsuario;
				}

				public void setListaUsuario(List<Usuario> listaUsuario) {
					this.listaUsuario = listaUsuario;
				}

				public int getCodUsuario() {
					return codUsuario;
				}

				public void setCodUsuario(int codUsuario) {
					this.codUsuario = codUsuario;
				}
				

	public Usuario getUsuario() {
					return usuario;
				}

				public void setUsuario(Usuario usuario) {
					this.usuario = usuario;
				}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}
}
