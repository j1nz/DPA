package internship.fpt.dpa.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import internship.fpt.dpa.common.ConnectDB;
import internship.fpt.dpa.common.SQLCommand;
import internship.fpt.dpa.model.bean.Pet;
import internship.fpt.dpa.model.bean.PetType;
import internship.fpt.dpa.model.bo.PetBO;

public class PetTypeDAO {

	private static PetTypeDAO instance = null;
	private PreparedStatement pstm = null;
	private ResultSet rs;
	private Connection cn;
	
	public PetTypeDAO() {
		cn = ConnectDB.getInstance().getConnect();
	}
	
	public static PetTypeDAO getInstance() {
		
		if(instance == null)
			instance = new PetTypeDAO();
		return instance;
	}

	/**
	 * Lay tat ca cac name cua loai thu
	 * @return List<PetType> list
	 */
	public List<PetType> petType() {
		List<PetType> list = new ArrayList<PetType>();
		
		String sql = SQLCommand.SelectAllRow("PetType");
		
		try {
			pstm = cn.prepareStatement(sql);
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				PetType pt = new PetType();
				pt.setPetTypeID(rs.getInt("petTypeID"));
				pt.setTypeName(rs.getString("typeName"));
				
				list.add(pt);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}

	/**
	 * Get Pet Type by ID
	 * @param id
	 * @return
	 */
	public PetType getPetTypeById(int id) {
		PetType pt = new PetType();
		String sql = SQLCommand.SelectRowWithWHERE("petTypeID, typeName", "PetType", "petTypeID = ?");
		
		try {
			pstm = cn.prepareStatement(sql);
			pstm.setInt(1, id);
			rs = pstm.executeQuery();
			while(rs.next()) {
				pt.setPetTypeID(rs.getInt("petTypeID"));
				pt.setTypeName(rs.getString("typeName"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return pt;
	}

	

}
