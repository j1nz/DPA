package internship.fpt.dpa.model.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import internship.fpt.dpa.common.ConnectDB;
import internship.fpt.dpa.model.bean.Product;

public class ProductDAO {
	private Connection cn;
	private ResultSet rs;
	private PreparedStatement pstm;
	private static ProductDAO instance = null;
	
	public ProductDAO() {
		cn = ConnectDB.getInstance().getConnect();
	}
	
	public static ProductDAO getInstance() {
		if(instance == null)
			instance = new ProductDAO();
		return instance;
	}
	
	/**
	 * List all product from database
	 * @return
	 * @throws SQLException
	 */
	public ArrayList<Product> getAllProduct() throws SQLException{
		ArrayList<Product> list=new ArrayList<Product>();

		String sql="select * from Product";
		
		pstm = cn.prepareStatement(sql);
		
		rs = pstm.executeQuery();
		
		while(rs.next()){
			Product p = new Product();
			p.setProductID(rs.getInt("productID"));
			p.setProductName(rs.getString("productName"));
			p.setQuantity(rs.getInt("quantity"));
			p.setProductType(rs.getString("productType"));
			p.setPrice(rs.getDouble("price"));
			list.add(p);
		}
		return list;
	}
	
	/**
	 * update product
	 * @param pr
	 * @throws SQLException
	 */
	public void updateProduct(Product pr) throws SQLException{
		
	}
	
	/**
	 * them moi mot san pham
	 * @param pr
	 * @throws SQLException
	 */
	public void insertProduct(Product pr) throws SQLException{
	
	}
	
	/**
	 * Xoa mot san pham
	 * @param productID
	 * @throws SQLException
	 */
	public void deleteProduct(int productID) throws SQLException{
	
		
	}
}
