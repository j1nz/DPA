package internship.fpt.dpa.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import internship.fpt.dpa.common.HardCode;
import internship.fpt.dpa.common.SQLCommand;
import internship.fpt.dpa.model.bean.Role;

/**
 * Role DAO
 * Since 2016 / 08 / 04 13h58
 * @author Le The Thang
 *
 */
public class RoleDAO {

	private static RoleDAO instance = null;
	
	public RoleDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public static RoleDAO getInstance() {
		if(instance == null)
			instance = new RoleDAO();
		
		return instance;
	}

	/**
	 * Lấy 1 list danh sách Role
	 * @return list role
	 */
	public List<Role> getListRole() {
		
		List<Role> list = new ArrayList<Role>();
		PreparedStatement pstm = null;
		Connection cn = HardCode.CNDB;
		ResultSet rs  = null;
		
		String sql = SQLCommand.SelectAllRow("Role");
		
		try {
			pstm = cn.prepareStatement(sql);
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				Role rl = new Role();
				
				rl.setRoleID(Integer.parseInt(rs.getString("roleID")));
				rl.setRoleName(rs.getString("roleName"));
				
				list.add(rl);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	/**
	 * Hàm add 1 Role mới vào database
	 * @param rl đối tượng của Role
	 */
	public void add(Role rl) {
		Connection cn = HardCode.CNDB;
		PreparedStatement pstm = null;

		try {
			cn.setAutoCommit(false);
			String sql = SQLCommand.InsertRowWithoutColumn("Role", "?, ?");
			
			
			pstm = cn.prepareStatement(sql);
			pstm.setInt(1, rl.getRoleID());
			pstm.setString(2, rl.getRoleName());
			
			pstm.executeUpdate();
			cn.commit();
		} catch (Exception e) {
			if (cn != null) {
	            try {
	                System.err.print("Transaction is being rolled back");
	                cn.rollback();
	            } catch(SQLException excep) {
	                System.out.println(excep.getMessage());
	            }
	        }
			e.printStackTrace();
		}  finally {
			if (pstm != null) {
	            try {
					pstm.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	        }
			try {
				cn.setAutoCommit(true);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	/**
	 * Get role by Name
	 * @param rl (Role)
	 * @return r (Role)
	 */
	public Role getRoleByName(Role rl) {
		
		Connection cn = HardCode.CNDB;
		PreparedStatement pstm = null;
		ResultSet rs;
		Role r = new Role();
		
		String sql = SQLCommand.SelectRowWithWHERE("roleID, roleName", "Role", "roleName = ?");
		try {
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, rl.getRoleName());
			rs = pstm.executeQuery();
			while (rs.next()) {
				r.setRoleID(rs.getInt("roleID"));
				r.setRoleName(rs.getString("roleName"));
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return r;
	}
	
	/**
	 * Get Role by ID
	 * @param rl (Role)
	 * @return r (Role)
	 */
	public Role getRoleByID(Role rl) {
			
		Connection cn = HardCode.CNDB;
		PreparedStatement pstm = null;
		ResultSet rs;
		Role r = new Role();
		
		String sql = SQLCommand.SelectRowWithWHERE("roleID, roleName", "Role", "roleID = ?");
		try {
			pstm = cn.prepareStatement(sql);
			pstm.setInt(1, rl.getRoleID());
			rs = pstm.executeQuery();
			while (rs.next()) {
				r.setRoleID(rs.getInt("roleID"));
				r.setRoleName(rs.getString("roleName"));
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return r;
	}
	
}
