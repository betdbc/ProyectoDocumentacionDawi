package net.proyecto.service;
import java.util.List;

import net.proyecto.entidad.Enlace;
import net.proyecto.entidad.Usuario;
import net.proyecto.fabrica.DAOFactory;
import net.proyecto.interfaces.UsuarioDAO;

public class UsuarioService {
	//PASO 1: crear la fabrica indicando el tipo de base de datos a usar
	DAOFactory fabrica=DAOFactory.getDAOFactory(1);
	//PASO 2: indicar en DAO a trabajar
	UsuarioDAO dao=fabrica.getUsuarioDAO();
			
			
	public Usuario iniciarSesion(Usuario bean) {
		return dao.iniciarSesion(bean);
	}
	public List<Enlace> traerEnlancesPorUsuario(int codUsu) {
		return dao.traerEnlancesPorUsuario(codUsu);
	}
	
	public List<Usuario> listAllUsuario(){
		 return dao.listUsuario();
	 }
	 public int save(Usuario bean){
		 return dao.addUsuario(bean);
	 }
	 public int update(Usuario bean){
		 return dao.updateUsuario(bean);
	 }
	 public int delete(int cod){
		 return dao.deleteUsuario(cod);
	 }
	
	
}
