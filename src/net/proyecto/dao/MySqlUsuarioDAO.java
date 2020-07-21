package net.proyecto.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import net.proyecto.entidad.Enlace;
import net.proyecto.entidad.Usuario;
import net.proyecto.interfaces.UsuarioDAO;

public class MySqlUsuarioDAO implements UsuarioDAO {
	SqlSessionFactory factory=null;
	{
		try {
			//variable para almacenar el nombre del archivo que tiene la conex. a la BD
			String archivo="ConfiguracionIbatis.xml";
			//leer el arhivo XML
			Reader reader=Resources.getResourceAsReader(archivo);
			//crear objeto según el valor del objeto "reader"
			factory=new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@Override
	public Usuario iniciarSesion(Usuario bean) {
		Usuario obj=null;
		//crear una sesión de la conexión "factory"
		SqlSession session=factory.openSession();
		try {
			obj=(Usuario) session.selectOne("SQL_InicarSesion",bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return obj;
	}

	@Override
	public List<Enlace> traerEnlancesPorUsuario(int codUsu) {
		List<Enlace> lista=new ArrayList<Enlace>();
		//crear una sesión de la conexión "factory"
		SqlSession session=factory.openSession();
		try {
			lista=session.selectList("SQL_TraerEnlacesPorUSuario",codUsu);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return lista;
	}

	@Override
	public int addUsuario(Usuario usu) {
		int estado=-1;
		SqlSession session=factory.openSession();
		try {
			estado=session.insert("SQL_InsertarUsuario",usu);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return estado;
	}

	@Override
	public int updateUsuario(Usuario usu) {
		int estado=-1;
		SqlSession session=factory.openSession();
		try {
			estado=session.update("SQL_ActualizarUsuario",usu);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return estado;
	}

	@Override
	public int deleteUsuario(int id) {
		int estado=-1;
		SqlSession session=factory.openSession();
		try {
			estado=session.delete("SQL_EliminarMedicamento",id);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return estado;
	}

	@Override
	public List<Usuario> listUsuario() {
		List<Usuario> lista=new ArrayList<Usuario>();
		SqlSession session=factory.openSession();
		try {
			lista=session.selectList("SQL_listarUsuario");
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
		}
		return lista;
	}

}
