package net.proyecto.interfaces;

import java.util.List;

import net.proyecto.entidad.Colegio;

public interface ColegioDAO {
	public List<Colegio> listaColegio();
	public List<Colegio> listacombo();

	public int saveColegio(Colegio col);
}
