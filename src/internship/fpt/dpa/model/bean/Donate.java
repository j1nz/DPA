package internship.fpt.dpa.model.bean;

import java.util.Date;

public class Donate {
	private int donateID;
	private String username;
	private Date dateDonate;
	
	private int quantity;
	private String note;
	
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
	 * @return the dateDonate
	 */
	public Date getDateDonate() {
		return dateDonate;
	}
	/**
	 * @param dateDonate the dateDonate to set
	 */
	public void setDateDonate(Date dateDonate) {
		this.dateDonate = dateDonate;
	}
	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}
	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	/**
	 * @return the note
	 */
	public String getNote() {
		return note;
	}
	/**
	 * @param note the note to set
	 */
	public void setNote(String note) {
		this.note = note;
	}
	
}
