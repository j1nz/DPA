package org.dpa.model.bo;

import org.dpa.model.bean.Account;
import org.dpa.model.dao.AccountDAO;

public class AccountBO {
private static AccountBO instance = null;
	
	AccountDAO accDAO = AccountDAO.getInstance();
	String notification;
	
	public AccountBO() {
		// TODO Auto-generated constructor stub
	}
	
	public static AccountBO getInstance() {
		if(instance == null)
			instance = new AccountBO();
		return instance;
	}
	
	/**
	 * Kiem tra xem account nhap vao co dung hay khong
	 * @param user
	 * @return neu dung tra veTRUE sai tra ve FALSE
	 */
	public boolean checkLogin(Account acc){
		boolean checkLogin = false;
		
		if (accDAO.checkLogin(acc)){
			notification = accDAO.getNotification();
			checkLogin = true;
		} else {
			notification = accDAO.getNotification();
		}
		
		return checkLogin;
	}
	
	/**
	 * Tra ve thong bao cho nguoi dung biet
	 * @return messeges
	 */
	public String getNotification() {
		return notification;
	}
}
