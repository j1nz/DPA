package internship.fpt.dpa.model.bean;

import java.util.Date;

public class Account {
	private String username;
	private String password;
	private String email;
	private int memberID;
	private int roleID;
	private Date dateCreate;
	private Date dateExpires;
	private String messenge;
	
	public Account() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the memberID
	 */
	public int getMemberID() {
		return memberID;
	}

	/**
	 * @param memberID the memberID to set
	 */
	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}

	/**
	 * @return the roleID
	 */
	public int getRoleID() {
		return roleID;
	}

	/**
	 * @param roleID the roleID to set
	 */
	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

	/**
	 * @return the dateCreate
	 */
	public Date getDateCreate() {
		return dateCreate;
	}

	/**
	 * @param dateCreate the dateCreate to set
	 */
	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}

	/**
	 * @return the dateExpires
	 */
	public Date getDateExpires() {
		return dateExpires;
	}

	/**
	 * @param dateExpires the dateExpires to set
	 */
	public void setDateExpires(Date dateExpires) {
		this.dateExpires = dateExpires;
	}

	/**
	 * @return the message
	 */
	public String getMessenge() {
		return messenge;
	}

	/**
	 * @param message the message to set
	 */
	public void setMessenge(String message) {
		this.messenge = message;
	}
	
}
