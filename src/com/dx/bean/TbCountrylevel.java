package com.dx.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * TbCountrylevel entity. @author MyEclipse Persistence Tools
 */

public class TbCountrylevel implements java.io.Serializable {

	// Fields

	private String countryLevelId;
	private String countryLevelName;
	private Set<TbBasicinfo> tbBasicinfos = new HashSet<TbBasicinfo>(0);

	// Constructors

	/** default constructor */
	public TbCountrylevel() {
	}

	/** minimal constructor */
	public TbCountrylevel(String countryLevelId) {
		this.countryLevelId = countryLevelId;
	}

	/** full constructor */
	public TbCountrylevel(String countryLevelId, String countryLevelName,
			Set tbBasicinfos) {
		this.countryLevelId = countryLevelId;
		this.countryLevelName = countryLevelName;
		this.tbBasicinfos = tbBasicinfos;
	}

	// Property accessors

	public String getCountryLevelId() {
		return this.countryLevelId;
	}

	public void setCountryLevelId(String countryLevelId) {
		this.countryLevelId = countryLevelId;
	}

	public String getCountryLevelName() {
		return this.countryLevelName;
	}

	public void setCountryLevelName(String countryLevelName) {
		this.countryLevelName = countryLevelName;
	}

	public Set getTbBasicinfos() {
		return this.tbBasicinfos;
	}

	public void setTbBasicinfos(Set tbBasicinfos) {
		this.tbBasicinfos = tbBasicinfos;
	}

}