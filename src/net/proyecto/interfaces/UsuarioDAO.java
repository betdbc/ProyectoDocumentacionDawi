package net.proyecto.interfaces;
import java.util.List;

import net.proyecto.entidad.Enlace;
import net.proyecto.entidad.Usuario;

public interface UsuarioDAO {
	public Usuario iniciarSesion(Usuario bean);//String login,String clave
	public List<Enlace> traerEnlancesPorUsuario(int codUsu);
	
	public int addUsuario(Usuario usu);
	public int updateUsuario(Usuario usu);
	public int deleteUsuario(int id);
	public List<Usuario> listUsuario();
}
