package internship.fpt.dpa.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import internship.fpt.dpa.common.ConnectDB;
import internship.fpt.dpa.common.SQLCommand;
import internship.fpt.dpa.model.bean.Account;

public class AccountDAO {
	private Connection cn;
	private PreparedStatement pstm;
	private ResultSet rs;
	private Account ac = new Account();
	private String roleName = "user";
	
	private static AccountDAO instance = null;
	
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
	 * @return Boolean check (nếu login thành công thì trả v�? true, và ngược lại)
	 */
	public boolean checkLogin(Account acc) {
		boolean check = false;
		
		if(checkUsername(acc.getUsername())) {
			if(checkPassword(acc.getPassword())) {
				ac.setUsername(acc.getUsername());
				ac.setPassword(acc.getPassword());
				checkRole(acc.getUsername());
				ac.setMessenge("Login Success !!!");
				check = true;
			} else {
				ac.setMessenge("Wrong password, please check it !!!");
			}
		} else {
			ac.setMessenge("Username is not had in database, please try again !!!");
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
	 * @return the roleName
	 */
	public String getRoleName() {
		return roleName;
	}

	/**
	 * @param roleName the roleName to set
	 */
	public void setRoleName(String roleName) {
		this.roleName = roleName;
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
		try {
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, username);
			rs = pstm.executeQuery();
			
			if(rs.next()) {
				checkUsername = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
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
		} finally {
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
		
		
		return checkPassword;
	}
	
	/**
	 * Check role of account
	 * @param username
	 */
	public void checkRole (String username) {
		String sql = "SELECT Role.roleName "
				+ "FROM Account inner join Role "
				+ "ON Account.username = ? "
				+ "AND Account.roleID = Role.roleID";
		
		try {
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, username);
			rs = pstm.executeQuery();
			if(rs.next()) {
				roleName = rs.getString("roleName");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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