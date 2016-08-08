package internship.fpt.dpa.model.bo;

import java.util.ArrayList;
import java.util.List;

import internship.fpt.dpa.model.bean.Pet;
import internship.fpt.dpa.model.dao.PetDAO;

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
}
