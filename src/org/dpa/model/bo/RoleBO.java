package org.dpa.model.bo;

import java.util.ArrayList;
import java.util.List;

import org.dpa.model.bean.Role;
import org.dpa.model.dao.RoleDAO;

public class RoleBO {
	private static RoleBO instance = null;
	
	public RoleBO() {
		// TODO Auto-generated constructor stub
	}
	
	public static RoleBO getInstance() {
		if(instance == null)
			instance = new RoleBO();
		return instance;
	}
	
	public List<Role> listRole() {
		List<Role> list = new ArrayList<Role>();
		
		RoleDAO roleDAO = RoleDAO.getInstance();
		
		list = roleDAO.getListRole();
		
		return list;
	}
	
	public void add(Role rl) {
		RoleDAO rldao = RoleDAO.getInstance();	
		rldao.add(rl);
	}
}
