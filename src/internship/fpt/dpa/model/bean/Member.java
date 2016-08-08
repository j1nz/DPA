package internship.fpt.dpa.model.bean;

import java.util.Date;

public class Member {
	private int memberID;
	private String name;
	private int age;
	private String phone;
	private String stress;
	private String city;
	private String position;
	
	public Member() {
		// TODO Auto-generated constructor stub
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
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
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the stress
	 */
	public String getStress() {
		return stress;
	}

	/**
	 * @param stress the stress to set
	 */
	public void setStress(String stress) {
		this.stress = stress;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the position
	 */
	public String getPosition() {
		return position;
	}

	/**
	 * @param position the position to set
	 */
	public void setPosition(String position) {
		this.position = position;
	}
	
}
