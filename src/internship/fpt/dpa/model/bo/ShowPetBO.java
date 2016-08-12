package internship.fpt.dpa.model.bo;

import java.util.ArrayList;
import java.util.List;

import internship.fpt.dpa.model.bean.Pet;
import internship.fpt.dpa.model.dao.PetDAO;

public class ShowPetBO {
	private static ShowPetBO instance;
	
	public ShowPetBO() {
		// TODO Auto-generated constructor stub
	}
	
	public static ShowPetBO getInstance() {
		if(instance == null)
			instance = new ShowPetBO();
		return instance;
	}
	
	public List<Pet> listAllPet(){
		List<Pet> list = new ArrayList<>();
		PetDAO pdao = PetDAO.getInstance();
		
		
		return list;
	}
	
}
