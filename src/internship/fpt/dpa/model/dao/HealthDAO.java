package internship.fpt.dpa.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import internship.fpt.dpa.common.ConnectDB;
import internship.fpt.dpa.common.SQLCommand;
import internship.fpt.dpa.model.bean.Health;
import internship.fpt.dpa.model.bean.PetType;

public class HealthDAO {
	private static HealthDAO instance = null;
	private PreparedStatement pstm = null;
	private ResultSet rs;
	private Connection cn;
	
	public HealthDAO() {
		 cn = ConnectDB.getInstance().getConnect();
	}
		
	
	
	public static HealthDAO getInstance() {
		
		if(instance == null)
			instance = new HealthDAO();
		return instance;
	}



	public List<Health> listHealth() {
		List<Health> list = new ArrayList<Health>();
		
		String sql = SQLCommand.SelectAllRow("Health");
		
		try {
			pstm = cn.prepareStatement(sql);
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				Health h = new Health();
				h.setHealthID(rs.getInt("healthID"));
				h.setHealthName(rs.getString("healthName"));
				
				list.add(h);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * 
	 * @param id
	 * @return
	 */
	public Health getHealthById(int id) {
		Health h = new Health();
		String sql = SQLCommand.SelectRowWithWHERE("*", "Health", "healthID = ?");
		
		try {
			pstm = cn.prepareStatement(sql);
			pstm.setInt(1, id);
			rs = pstm.executeQuery();
			while(rs.next()) {
				h.setHealthID(rs.getInt("healthID"));
				h.setHealthName(rs.getString("healthName"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return h;
	}
}
