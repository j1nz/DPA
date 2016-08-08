package internship.fpt.dpa.model.bo;

import java.util.ArrayList;
import java.util.List;

import internship.fpt.dpa.model.bean.Account;
import internship.fpt.dpa.model.dao.AccountDAO;

public class AccountBO {
private static AccountBO instance = null;
	
	AccountDAO accDAO = AccountDAO.getInstance();
	String notification;
	private String roleName;
	private String avatar;
	
	public AccountBO() {
		// TODO Auto-generated constructor stub
	}
	
	public static AccountBO getInstance() {
		if(instance == null)
			instance = new AccountBO();
		return instance;
	}
	
	/**
	 * Liet ke tat ca tai khoan co trong DB
	 * @return List<Account> list
	 */
	public List<Account> listAccount() {
		List<Account> list = new ArrayList<Account>();

		list = accDAO.listAccount();
		
		return list;
	}
	
	//region - Login
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
			avatar = accDAO.getAvatar();
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
	//endregion - end Login

	public String getAvatar() {
		// TODO Auto-generated method stub
		return avatar;
	}
}
