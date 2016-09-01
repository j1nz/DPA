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
import internship.fpt.dpa.model.bean.Donate;
import internship.fpt.dpa.model.bean.Pet;

public class DonateDAO {
	private static DonateDAO instance;
	
	private Connection cn;
	private PreparedStatement pstm;
	private ResultSet rs;
	
	public DonateDAO() {
		cn = ConnectDB.getInstance().getConnect();
	}
	
	public static DonateDAO getInstance() {
		if(instance == null)
			instance = new DonateDAO();
		return instance;
	}

	public void addDonate(Donate dn, Pet p) {
		String sql = "DECLARE @tempDonate TABLE(donateID INT)"
				+ " INSERT INTO Donate "
				+ "OUTPUT(Inserted.donateID) INTO @tempDonate"
				+ " VALUES(?, ?, ?, ?) "
				+ "INSERT INTO Pet VALUES(?, ?, ?, ?, ?, ?, (SELECT donateID FROM @tempDonate), ?, ?, ?, ?)"
				+ " DELETE FROM @tempDonate WHERE 1=1";
		
		try {
			pstm = cn.prepareStatement(sql);
			
			pstm.setString(1, dn.getUsername());
			pstm.setDate(2, (Date) dn.getDateDonate());
			pstm.setInt(3, dn.getQuantity());
			pstm.setString(4, dn.getNote());
			
			pstm.setString(5, p.getPetName());
			pstm.setInt(6, p.getAge());
			pstm.setInt(7, p.getPetTypeID());
			pstm.setString(8, p.getNickname());
			pstm.setInt(9, p.getHealthID());
			pstm.setInt(10, p.getStatus());
			pstm.setString(11, p.getUsername());
			pstm.setDate(12, (Date) p.getDateReceived());
			pstm.setString(13, p.getAvatar());
			pstm.setString(14, p.getDescription());
			
			pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public List<Donate> getAllDonate() {
		String sql = SQLCommand.SelectAllRow("Donate");
		List<Donate> list = new ArrayList<Donate>();
		try {
			pstm = cn.prepareStatement(sql);
			
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				Donate dn = new Donate();
				dn.setDonateID(rs.getInt("donateID"));
				dn.setUsername(rs.getString("username"));
				dn.setDateDonate(rs.getDate("dateDonate"));
				dn.setQuantity(rs.getInt("quantity"));
				dn.setNote(rs.getString("note"));
				
				list.add(dn);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public Donate getDonateID(String username, Date dateDonate) {
		Donate dn = new Donate();
		
		String sql = "SELECT donateID FROM Donate WHERE username = ? AND dateDonate = ?";
		try {
			pstm = cn.prepareStatement(sql);
			
			pstm.setString(1, username);
			pstm.setDate(2, dateDonate);
			
			rs = pstm.executeQuery();
			
			if(rs.next()){
				dn.setDonateID(rs.getInt("donateID"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return dn;
	}

}
