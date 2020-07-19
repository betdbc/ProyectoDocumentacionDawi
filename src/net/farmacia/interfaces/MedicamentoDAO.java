package net.farmacia.interfaces;
import java.util.List;
import net.farmacia.entidad.Medicamento;
import net.farmacia.entidad.Parametros;
public interface MedicamentoDAO {
	public int addMedicamento(Medicamento med);
	public int updateMedicamento(Medicamento med);
	public int deleteMedicamento(int id);
	public List<Medicamento> listMedicamento();
	public Medicamento findMedicamento(int id);
	public int updateFotoMedicamento(Medicamento med);
	public List<Medicamento> listMedicamentoAtNombre(String nom);
	public List<Medicamento> listConsultaMedicamentoLaboratorioPorTipo(Parametros bean);
	public List<Medicamento> listConsultaMedicamentoPorLaboratorio(int codLab);
}

