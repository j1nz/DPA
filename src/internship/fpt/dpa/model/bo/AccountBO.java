package internship.fpt.dpa.model.bo;

import internship.fpt.dpa.model.bean.Account;
import internship.fpt.dpa.model.dao.AccountDAO;

public class AccountBO {
private static AccountBO instance = null;
	
	AccountDAO accDAO = AccountDAO.getInstance();
	String notification;
	private String roleName;
	
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
			roleName = accDAO.getRoleName();
			checkLogin = true;
		} else {
			notification = accDAO.getNotification();
		}
		
		return checkLogin;
	}
	
	/**
	 * @return the roleName
	 */
	public String getRoleName() {
		return roleName;
	}

	/**
	 * Tra ve thong bao cho nguoi dung biet
	 * @return messeges
	 */
	public String getNotification() {
		return notification;
	}
}
