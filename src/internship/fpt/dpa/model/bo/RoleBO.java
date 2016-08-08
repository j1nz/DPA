package internship.fpt.dpa.model.bo;

import java.util.ArrayList;
import java.util.List;

import internship.fpt.dpa.model.bean.Role;
import internship.fpt.dpa.model.dao.RoleDAO;

/**
 * Since 2016 / 08 / 04 : 13h46
 * @author Le The Thang - PNV
 *
 */

public class RoleBO {
	private static RoleBO instance = null;
	
	public RoleBO() {
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * Sử dụng Singleton patern
	 * @return
	 */
	public static RoleBO getInstance() {
		if(instance == null)
			instance = new RoleBO();
		return instance;
	}
	
	/**
	 * Liệt kê tất cả các role đã có trong database
	 * @return List<Role>
	 */
	public List<Role> listRole() {
		List<Role> list = new ArrayList<Role>();
		
		RoleDAO roleDAO = RoleDAO.getInstance();
		
		list = roleDAO.getListRole();
		
		return list;
	}
	
	/**
	 * Hàm thêm vào 1 role mới vào database
	 * Role có mục đích phân quyền người dùng
	 * @param rl đối tượng của Role
	 */
	public void add(Role rl) {
		RoleDAO rldao = RoleDAO.getInstance();	
		rldao.add(rl);
	}
	
	/**
	 * Get role by ID of Role
	 * @param rl
	 * @return
	 */
	public Role getRoleByID(Role rl) {
		
		Role r = new Role();
		RoleDAO roledao = RoleDAO.getInstance();
		r = roledao.getRoleByID(rl);
		
		return r;
	}
	
	/**
	 * get role by Name
	 * @param rl
	 * @return
	 */
	public Role getRoleByName(Role rl) {
		
		Role r = new Role();
		RoleDAO roledao = RoleDAO.getInstance();
		r = roledao.getRoleByName(rl);
		
		return r;
	}
}
