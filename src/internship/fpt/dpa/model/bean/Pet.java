package internship.fpt.dpa.model.bean;

import java.util.Date;

public class Pet {
	private int petID;
	private String petName;
	private int age;
	private int petTypeID;
	private int healthID;
	private String nickname;
	private int status;
	private int donateID;
	private String username;
	private Date dateReceived;
	private String description;
	
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	private String avatar;
	
	/**
	 * @return the petID
	 */
	public int getPetID() {
		return petID;
	}
	/**
	 * @param petID the petID to set
	 */
	public void setPetID(int petID) {
		this.petID = petID;
	}
	/**
	 * @return the petName
	 */
	public String getPetName() {
		return petName;
	}
	/**
	 * @param petName the petName to set
	 */
	public void setPetName(String petName) {
		this.petName = petName;
	}
	/**
	 * @return the age
	 */
	public int getAge() {
		return age;
	}
	/**
	 * @param age the age to set
	 */
	public void setAge(int age) {
		this.age = age;
	}
	/**
	 * @return the petTypeID
	 */
	public int getPetTypeID() {
		return petTypeID;
	}
	/**
	 * @param petTypeID the petTypeID to set
	 */
	public void setPetTypeID(int petTypeID) {
		this.petTypeID = petTypeID;
	}
	/**
	 * @return the healthID
	 */
	public int getHealthID() {
		return healthID;
	}
	/**
	 * @param healthID the healthID to set
	 */
	public void setHealthID(int healthID) {
		this.healthID = healthID;
	}
	/**
	 * @return the nickname
	 */
	public String getNickname() {
		return nickname;
	}
	/**
	 * @param nickname the nickname to set
	 */
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	/**
	 * @return the status
	 */
	public int getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(int status) {
		this.status = status;
	}
	/**
	 * @return the donateID
	 */
	public int getDonateID() {
		return donateID;
	}
	/**
	 * @param donateID the donateID to set
	 */
	public void setDonateID(int donateID) {
		this.donateID = donateID;
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
	 * @return the dateReceived
	 */
	public Date getDateReceived() {
		return dateReceived;
	}
	/**
	 * @param dateReceived the dateReceived to set
	 */
	public void setDateReceived(Date dateReceived) {
		this.dateReceived = dateReceived;
	}
	/**
	 * @return the avatar
	 */
	public String getAvatar() {
		return avatar;
	}
	/**
	 * @param avatar the avatar to set
	 */
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	
}
