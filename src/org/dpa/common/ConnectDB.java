package org.dpa.common;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 * @author Fresher119
 *
 */
public class ConnectDB {
	private Connection cn = null;
	private static ConnectDB instance = null;
	
	private static String IP = "localhost";
	private static String PORT = "1433";
	private static String DATABASE_NAME = "PetsAdoption";
	private String url = "jdbc:sqlserver://"+IP+":"+PORT+";databaseName="+DATABASE_NAME;
	private static String username = "sa";
	private String password = "12345678";
	
	
	/**
	 * 
	 */
	public static synchronized ConnectDB getInstance() {
		if(instance == null)
			instance = new ConnectDB();
		return instance;
	}

	/**
	 * 
	 */
	public ConnectDB() {
		
	}

	public Connection getConnect() {
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			cn = DriverManager.getConnection(url, username, password);
			
			System.out.println(url);
			System.out.println(username);
			System.out.println(password);
			
			if(cn != null){
				System.out.println("Ket noi thanh cong");
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
			System.out.println("Ket noi loi tai class connection");
			
		} catch (ClassNotFoundException CNFEx) {
			CNFEx.printStackTrace();
			System.out.println("Ket noi loi tai class connection");
			
		}
		
		return cn;
	}
}

