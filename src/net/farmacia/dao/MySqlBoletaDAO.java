package net.farmacia.dao;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import net.farmacia.entidad.Boleta;
import net.farmacia.entidad.Detalle;
import net.farmacia.interfaces.BoletaDAO;

public class MySqlBoletaDAO implements BoletaDAO {
	//crear un objeto que permita obtener la conexi�n con la base de datos que se encuentra 
	//en el archivo ConfiguracionIbatis.xml
	SqlSessionFactory factory=null;
	{
		try {
			//variable para almacenar el nombre del archivo que tiene la conex. a la BD
			String archivo="ConfiguracionIbatis.xml";
			//leer el arhivo XML
			Reader reader=Resources.getResourceAsReader(archivo);
			//crear objeto seg�n el valor del objeto "reader"
			factory=new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public int registrarBoleta(Boleta bean, List<Detalle> lista) {
		int estado=0;
		SqlSession session=factory.openSession();
		try {
			//cabecera "BOLETA"
			estado+=session.insert("SQL_InsertarBoleta",bean);
			
			//Detalle 
			for(Detalle det:lista) {
				det.setNumBoleta(bean.getNumBoleta());
				estado+=session.insert("SQL_InsertarDetalle",det);
			}
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

}
