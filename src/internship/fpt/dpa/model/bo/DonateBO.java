package internship.fpt.dpa.model.bo;


import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import internship.fpt.dpa.model.bean.Donate;
import internship.fpt.dpa.model.bean.Pet;
import internship.fpt.dpa.model.dao.DonateDAO;

public class DonateBO {
	public static DonateBO instance = null;
	
	public DonateBO() {
		// TODO Auto-generated constructor stub
	}
	
	public static DonateBO getInstance() {
		if(instance == null)
			instance = new DonateBO();
		return instance;
	}
	
	public void addDonate(Donate dn, Pet p) {
		DonateDAO dndao = DonateDAO.getInstance();
		dndao.addDonate(dn, p);
	}
	
	public List<Donate> getAllDonate() {
		List<Donate> list = new ArrayList<Donate>();
		DonateDAO dndao = DonateDAO.getInstance();
		
		list = dndao.getAllDonate();
		
		return list;
	}
	
	public Donate getDonateID(String username, Date date) {
		
		
		Donate dn = new Donate();
		DonateDAO dndao = DonateDAO.getInstance();
		dn = dndao.getDonateID(username, date);
		return dn;
	}
}
