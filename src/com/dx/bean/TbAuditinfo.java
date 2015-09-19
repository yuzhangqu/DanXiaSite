package com.dx.bean;

/**
 * TbAuditinfo entity. @author MyEclipse Persistence Tools
 */

public class TbAuditinfo implements java.io.Serializable {

	// Fields

	private Integer basicId;
	private TbBasicinfo tbBasicinfo;
	private String suggestions;
	private String signature;
	private String responsibility;
	private String company;
	private String address;
	private String phone;
	private String fax;
	private String email;
	private String date;

	// Constructors

	/** default constructor */
	public TbAuditinfo() {
	}

	/** minimal constructor */
	public TbAuditinfo(TbBasicinfo tbBasicinfo) {
		this.tbBasicinfo = tbBasicinfo;
	}

	/** full constructor */
	public TbAuditinfo(TbBasicinfo tbBasicinfo, String suggestions,
			String signature, String responsibility, String company,
			String address, String phone, String fax, String email, String date) {
		this.tbBasicinfo = tbBasicinfo;
		this.suggestions = suggestions;
		this.signature = signature;
		this.responsibility = responsibility;
		this.company = company;
		this.address = address;
		this.phone = phone;
		this.fax = fax;
		this.email = email;
		this.date = date;
	}
	

	// Property accessors

	public Integer getBasicId() {
		return this.basicId;
	}

	public void setBasicId(Integer basicId) {
		this.basicId = basicId;
	}

	public TbBasicinfo getTbBasicinfo() {
		return this.tbBasicinfo;
	}

	public void setTbBasicinfo(TbBasicinfo tbBasicinfo) {
		this.tbBasicinfo = tbBasicinfo;
	}

	public String getSuggestions() {
		return this.suggestions;
	}

	public void setSuggestions(String suggestions) {
		this.suggestions = suggestions;
	}

	public String getSignature() {
		return this.signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	public String getResponsibility() {
		return this.responsibility;
	}

	public void setResponsibility(String responsibility) {
		this.responsibility = responsibility;
	}

	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}