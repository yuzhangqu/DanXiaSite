package com.dx.bean;

/**
 * TbUserinfo entity. @author MyEclipse Persistence Tools
 */

public class TbUserinfo implements java.io.Serializable {

	// Fields

	private Integer lineId;
	private String userName;
	private String password;
	private String userType;

	// Constructors

	/** default constructor */
	public TbUserinfo() {
	}

	/** full constructor */
	public TbUserinfo(String userName, String password, String userType) {
		this.userName = userName;
		this.password = password;
		this.userType = userType;
	}

	// Property accessors

	public Integer getLineId() {
		return this.lineId;
	}

	public void setLineId(Integer lineId) {
		this.lineId = lineId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return this.userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

}