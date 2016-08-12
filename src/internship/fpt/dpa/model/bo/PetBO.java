package internship.fpt.dpa.model.bo;

import java.util.ArrayList;
import java.util.List;

import internship.fpt.dpa.model.bean.Health;
import internship.fpt.dpa.model.bean.Pet;
import internship.fpt.dpa.model.bean.PetType;
import internship.fpt.dpa.model.dao.HealthDAO;
import internship.fpt.dpa.model.dao.PetDAO;
import internship.fpt.dpa.model.dao.PetTypeDAO;

public class PetBO {
	private static PetBO instance;
	
	public PetBO() {
		// TODO Auto-generated constructor stub
	}
	
	public static PetBO getInstance() {
		if(instance == null) 
			instance = new PetBO();
		return instance;
	}

	/**
	 * Hiển thị danh sách các thú nuôi có trong CSDL
	 * @return List<Pet> list 
	 */
	public List<Pet> getListPet() {
		List<Pet> list = new ArrayList<Pet>();
		
		PetDAO pdao = PetDAO.getInstance();
		list = pdao.getListPet();
		
		return list;
	}
	
	/**
	 * Thêm 1 thú nuôi vào danh sách
	 * @param p
	 */
	public void addPet(Pet p) {
		
		PetDAO pdao = PetDAO.getInstance();
		pdao.addPet(p);
	}
	
	/**
	 * get danh sach type pet
	 * @return
	 */
	public List<PetType> petType() {
		PetTypeDAO ptdao = PetTypeDAO.getInstance();
		
		List<PetType> list = new ArrayList<PetType>();
		
		list = ptdao.petType();
		
		return list;
	}
	
	public int countAllPet(){
		PetDAO p = PetDAO.getInstance();
		
		return p.countPet();
	}

	public List<Health> getHealth() {
		
		List<Health> list = new ArrayList<Health>();
		
		HealthDAO hdao = HealthDAO.getInstance();
		list = hdao.listHealth();
		
		return list;
	}
}
