package com.dx.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * TbProvincelevel entity. @author MyEclipse Persistence Tools
 */

public class TbProvincelevel implements java.io.Serializable {

	// Fields

	private String provinceLevelId;
	private String provinceLevelName;
	private Set<TbBasicinfo> tbBasicinfos = new HashSet<TbBasicinfo>(0);

	// Constructors

	/** default constructor */
	public TbProvincelevel() {
	}

	/** minimal constructor */
	public TbProvincelevel(String provinceLevelId) {
		this.provinceLevelId = provinceLevelId;
	}

	/** full constructor */
	public TbProvincelevel(String provinceLevelId, String provinceLevelName,
			Set tbBasicinfos) {
		this.provinceLevelId = provinceLevelId;
		this.provinceLevelName = provinceLevelName;
		this.tbBasicinfos = tbBasicinfos;
	}

	// Property accessors

	public String getProvinceLevelId() {
		return this.provinceLevelId;
	}

	public void setProvinceLevelId(String provinceLevelId) {
		this.provinceLevelId = provinceLevelId;
	}

	public String getProvinceLevelName() {
		return this.provinceLevelName;
	}

	public void setProvinceLevelName(String provinceLevelName) {
		this.provinceLevelName = provinceLevelName;
	}

	public Set getTbBasicinfos() {
		return this.tbBasicinfos;
	}

	public void setTbBasicinfos(Set tbBasicinfos) {
		this.tbBasicinfos = tbBasicinfos;
	}

}