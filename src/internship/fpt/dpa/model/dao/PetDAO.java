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

public class PetDAO {

	private static PetDAO instance = null;
	
	private Connection cn;
	private PreparedStatement pstm;
	private ResultSet rs;
	
	public PetDAO() {
		cn = ConnectDB.getInstance().getConnect();
	}
	
	public static PetDAO getInstance() {
		if(instance == null)
			instance = new PetDAO();
		return instance;
	}

	/**
	 * Liet ke tat ca thu nuoi co trong database
	 * @return List<Pet> lPet
	 */
	public List<Pet> getListPet() {
		List<Pet> lPet = new ArrayList<Pet>();
		
		String sql = SQLCommand.SelectAllRow("Pet");
		try {
			pstm = cn.prepareStatement(sql);
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				Pet p = new Pet();
				
				p.setPetID(rs.getInt("petID"));
				p.setPetName(rs.getString("petName"));
				p.setAge(rs.getInt("age"));
				p.setPetTypeID(rs.getInt("petTypeID"));
				p.setStatus(rs.getInt("status"));
				p.setHealthID(rs.getInt("healthID"));
				p.setNickname(rs.getString("nickname"));
				p.setDonateID(rs.getInt("donateID"));
				p.setUsername(rs.getString("username"));
				p.setDayReceived(rs.getInt("dayReceived"));
				p.setMonthReceived(rs.getInt("monthReceived"));
				p.setYearReceived(rs.getInt("yearReceived"));
				p.setAvatar(rs.getString("avatar"));
				
				lPet.add(p);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return lPet;
	}

	/**
	 * Them thu vao database
	 * [petName]
      ,[age]
      ,[petTypeID]
      ,[nickname]
      ,[healthID]
      ,[status]
      ,[donateID]
      ,[username]
      ,[dayReceived]
      ,[monthReceived]
      ,[yearReceived]
      ,[avatar]
	 * @param p
	 */
	public void addPet(Pet p) {
		String sql = "INSERT INTO Pet VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, p.getPetName());
			pstm.setInt(2, p.getAge());
			pstm.setInt(3, p.getPetTypeID());
			pstm.setString(4, p.getNickname());
			pstm.setInt(5, p.getHealthID());
			pstm.setInt(6, p.getStatus());
			pstm.setInt(7, p.getDonateID());
			pstm.setString(8, p.getUsername());
			pstm.setInt(9, p.getDayReceived());
			pstm.setInt(10, p.getMonthReceived());
			pstm.setInt(11, p.getYearReceived());
			pstm.setString(12, p.getAvatar());
			
			pstm.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
