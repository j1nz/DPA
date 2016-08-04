package org.dpa.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.dpa.common.HardCode;
import org.dpa.common.SQLCommand;
import org.dpa.model.bean.Role;


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
	
}
