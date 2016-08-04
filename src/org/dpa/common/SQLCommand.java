package org.dpa.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SQLCommand {
	public static SQLCommand instance;
	
	private Connection cn = null;
	private ResultSet rs = null;
	private PreparedStatement pstm = null;
	
	public SQLCommand(){
		
	}

	/**
	 * Đảm bảo mỗi object chỉ thể hiện duy nhất qua instance (SingleTon trong Design Pattern)
	 * @return instance
	 */
	public static SQLCommand getInstance() {
		if(instance == null)
			instance = new SQLCommand();
		return instance;
	}

	/**
	 * Select dữ liệu theo dòng với tên trường, tên bảng người dùng nhập vào
	 * @param column_name
	 * @param table_name
	 * @return SELECT <tên trường, ...> FROM <tên bảng>
	 */
	public static String SelectRowWithoutWhere(String column_name, String table_name){
		return "SELECT " +column_name+ " FROM " +table_name;
	}
	
	/**
	 * Select dòng với tên trường, tên bảng, điều kiện, người dùng nhập vào
	 * @param column_name
	 * @param table_name
	 * @param condition_after_where
	 * @return SELECT <tên trường, ...> FROM <tên bảng> WHERE <điều kiện>
	 */
	public static String SelectRowWithWHERE(String column_name, String table_name, String condition_after_where){
		return "SELECT " +column_name+ " FROM " +table_name+ " WHERE " +condition_after_where;
	}
	
	/**
	 * Select tất cả dòng từ một bảng người dùng nhập vào
	 * @param table_name
	 * @return SELECT * FROM <tên bảng>
	 */
	public static String SelectAllRow(String table_name){
		return "SELECT * FROM " +table_name;
	}
	
	/**
	 * Update Không sử dung where, câu lệnh áp dụng cho PreparedStatement vì có tham số <?>
	 * @param field_name
	 * @param table_name
	 * @param newVirable
	 * @return UPDATE <tên bảng> SET <tên cột> = ?
	 */
	public static String UpdateWithoutWHERE(String column_name, String table_name) {
		return "UPDATE "+table_name+ " SET " +column_name+ " = ?";
	}
	
	/**
	 * Update in SQL sử dụng thêm điều kiện WHERE, áp dụng cho preparedStatement
	 * @param column_name
	 * @param table_name
	 * @param condition_after_where
	 * @return UPDATE <table name> SET <column_name> = <giá trị mới> WHERE <điều kiện đưa vào>
	 */
	public static String UpdateWithWHERE(String column_name, String table_name, String condition_after_where) {
		return "UPDATE " +table_name+ " SET " +column_name+ " = ? WHERE " +condition_after_where;
	}
	
	/**
	 * Xóa theo dòng ở trong bảng với điều kiện WHERE
	 * @param table_name
	 * @param condition_after_where
	 * @return DELETE FROM <tên bảng> WHERE <điều kiện>
	 */
	public static String DeleteRow(String table_name, String condition_after_where) {
		return "DELETE FROM " +table_name+ " WHERE " +condition_after_where;
	}
	
	/**
	 * Câu lệnh chèn dữ liệu vào một bảng (nếu nhiều cột thì cột ngăn cách nhau bởi dấu phải và giá trị mới cũng vậy cũng ngăn cách nhau bởi dấu phẩy)
	 * @param column_name
	 * @param table_name
	 * @param new_values
	 * @return INSERT INTO <tên bảng> (<tên cột 1>, <tên cột 2>, ...) VALUES (<giá trị 1>, <giá trị 2>, ...)
	 */
	public static String InsertRowWithColumnName(String column_name, String table_name, String new_values) {
		return "INSERT INTO " +table_name+ " ("+column_name+") VALUES ("+new_values+")";
	}
	
	/**
	 * Câu lệnh chèn dữ liệu vào bảng không sử dụng cột
	 * @param table_name
	 * @param new_values
	 * @return INSERT INTO <tên bảng> VALUES (<giá trị mới 1>, <giá trị mới 2>, ...)
	 */
	public static String InsertRowWithoutColumn(String table_name, String new_values) {
		return "INSERT INTO " +table_name+ " VALUES ("+new_values+")";
	}
		
	/**
	 * Hàm giúp thực thi câu lệnh SELECT và trả về kết quả truy vấn được từ database sử dụng PreparedStatemnent, giảm thiểu thời gian code;
	 * @param connection: truyền vào một kết nối
	 * @param sql_command: truyền vào lệnh cần thực thi
	 * @return ResultSet rs: trả về kết quả
	 * @throws SQLException ném ra lỗi ngoại lệ (nếu có)
	 */
	public ResultSet selectWithPreparedStatementConnectDB(Connection connection, String sql_command) throws SQLException {
		try {
			cn = connection;
			pstm = cn.prepareStatement(sql_command);
			rs = pstm.executeQuery();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			throw e;
		} finally {
			cn.close();
		}
		
		return rs;
	}
	
	
}
