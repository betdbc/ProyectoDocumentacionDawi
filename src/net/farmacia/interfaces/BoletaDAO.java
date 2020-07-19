package net.farmacia.interfaces;
import java.util.List;
import net.farmacia.entidad.Boleta;
import net.farmacia.entidad.Detalle;

public interface BoletaDAO {
	public int registrarBoleta(Boleta bean, List<Detalle> lista);
}
