package internship.fpt.dpa.model.dao;

import java.sql.Connection;
import java.sql.Date;
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
				p.setDateReceived(rs.getDate("dateReceived"));
				p.setAvatar(rs.getString("avatar"));
				p.setDescription(rs.getString("description"));
				
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
	 * @param Pet p
	 */
	public void addPet(Pet p) {
		String sql = "INSERT INTO Pet VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
			pstm.setDate(9, (Date) p.getDateReceived());
			pstm.setString(10, p.getAvatar());
			pstm.setString(11, p.getDescription());
			
			pstm.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void deletePet(String id) {
		
	}
	
	
	public int countPet(){
		int count = 0;
        try{
	        String sql = "SELECT count(petID) FROM Pet";
	        PreparedStatement ps = cn.prepareStatement(sql);
	        ResultSet rs = ps.executeQuery();
        
        while (rs.next()) {
            count = rs.getInt(1);
        }
        } catch(SQLException e) {
        	e.getMessage();
        }
        return count;  
    }

	/**
	 * 
	 * [petName]
      ,[age]
      ,[petTypeID]
      ,[nickname]
      ,[healthID]
      ,[status]
      ,[donateID]
      ,[username]
      ,[dateReceived]
      ,[avatar]
      ,[description]
	 * @param id
	 * @return
	 */
	public Pet getPetById(int id) {
		Pet p = new Pet();
		
		String sql = SQLCommand.SelectRowWithWHERE("*", "Pet", "petID = ?");
		
		try {
			pstm = cn.prepareStatement(sql);
			pstm.setInt(1, id);
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				p.setPetID(rs.getInt("petID"));
				p.setPetName(rs.getString("petName"));
				p.setAge(rs.getInt("age"));
				p.setPetTypeID(rs.getInt("petTypeID"));
				p.setNickname(rs.getString("nickname"));
				p.setHealthID(rs.getInt("healthID"));
				p.setStatus(rs.getInt("status"));
				p.setDonateID(rs.getInt("donateID"));
				p.setUsername(rs.getString("username"));
				p.setDateReceived(rs.getDate("dateReceived"));
				p.setAvatar(rs.getString("avatar"));
				p.setDescription(rs.getString("description"));

			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return p;
	}
	
	 
}
