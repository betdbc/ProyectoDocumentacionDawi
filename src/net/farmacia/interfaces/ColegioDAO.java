package net.farmacia.interfaces;

import java.util.List;

import net.farmacia.entidad.Colegio;

public interface ColegioDAO {
	public List<Colegio> listaColegio();
	public List<Colegio> listacombo();

	public int saveColegio(Colegio col);
}
