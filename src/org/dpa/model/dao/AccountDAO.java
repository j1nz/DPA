package org.dpa.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.dpa.common.ConnectDB;
import org.dpa.common.SQLCommand;
import org.dpa.model.bean.Account;

public class AccountDAO {
	private Connection cn;
	private PreparedStatement pstm;
	private ResultSet rs;
	private Account ac = new Account();
	
	private static AccountDAO instance = null;
	
	/**
	 * 
	 */
	public AccountDAO() {
		cn = ConnectDB.getInstance().getConnect();
	}

	/**
	 * @return the instance
	 */
	public static AccountDAO getInstance() {
		if(instance == null) {
	         instance = new AccountDAO();
	      }
		return instance;
	}

	/**
	 * Hàm thực hiện check Login
	 * @param u đối tượng User
	 * @return nếu login thành công thì trả về true, và ngược lại
	 */
	public boolean checkLogin(Account acc) {
		boolean check = false;
		
		
		if(checkUsername(acc.getUsername())) {
			if(checkPassword(acc.getPassword())) {
				ac.setUsername(acc.getUsername());
				ac.setPassword(acc.getPassword());
				ac.setMessenge("Thanh cong");
				check = true;
			} else {
				ac.setMessenge("Sai mật khẩu");
			}
		} else {
			ac.setMessenge("Username không tồn tại !!!");
		}
		
		return check;
	}
	
	/**
	 * Tra ve thong bao cho nguoi dung biet
	 * @return messeges
	 */
	public String getNotification() {
		return ac.getMessenge();
	}
	
	/**
	 * Kiem tra username co ton tai hay khong
	 * @param username
	 * @return neu co ton tai tra ve true, va nguoc lai
	 */
	public boolean checkUsername(String username) {
		boolean checkUsername = false;
		
		String sql = SQLCommand.SelectRowWithWHERE("username", "dbo.[Account]", "username = ?");
		System.out.println(sql);
		System.out.println(username);
		try {
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, username);
			rs = pstm.executeQuery();
			
			if(rs.next()) {
				checkUsername = true;
			}
		} catch (SQLException e) {
			System.out.println("Loi ta dong 91");
			e.printStackTrace();
		}
		
		return checkUsername;
	}
	
	/**
	 * Check Password cuar nguoi dung
	 * @param password
	 * @return neu dung tra ve true va nguoc lai
	 */
	public boolean checkPassword (String password) {
		boolean checkPassword = false;
		
		String sql = SQLCommand.SelectRowWithWHERE("password", "dbo.[Account]", "password = ?;");
		
		try {
			
			
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, password);
			rs = pstm.executeQuery();
			
			if(rs.next()) {
				checkPassword = true;
			}
		} catch (SQLException e) {
			System.out.println("Loi ta dong 119");
			e.printStackTrace();
		}
		
		
		return checkPassword;
	}
}
