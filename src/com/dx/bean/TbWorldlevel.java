package com.dx.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * TbWorldlevel entity. @author MyEclipse Persistence Tools
 */

public class TbWorldlevel implements java.io.Serializable {

	// Fields

	private String worldLevelId;
	private String worldLevelName;
	private Set<TbBasicinfo> tbBasicinfos = new HashSet<TbBasicinfo>(0);

	// Constructors

	/** default constructor */
	public TbWorldlevel() {
	}

	/** minimal constructor */
	public TbWorldlevel(String worldLevelId) {
		this.worldLevelId = worldLevelId;
	}

	/** full constructor */
	public TbWorldlevel(String worldLevelId, String worldLevelName,
			Set tbBasicinfos) {
		this.worldLevelId = worldLevelId;
		this.worldLevelName = worldLevelName;
		this.tbBasicinfos = tbBasicinfos;
	}

	// Property accessors

	public String getWorldLevelId() {
		return this.worldLevelId;
	}

	public void setWorldLevelId(String worldLevelId) {
		this.worldLevelId = worldLevelId;
	}

	public String getWorldLevelName() {
		return this.worldLevelName;
	}

	public void setWorldLevelName(String worldLevelName) {
		this.worldLevelName = worldLevelName;
	}

	public Set getTbBasicinfos() {
		return this.tbBasicinfos;
	}

	public void setTbBasicinfos(Set tbBasicinfos) {
		this.tbBasicinfos = tbBasicinfos;
	}

}