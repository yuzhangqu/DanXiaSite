package com.dx.bean;

/**
 * TbCulturescene entity. @author MyEclipse Persistence Tools
 */

public class TbCulturescene implements java.io.Serializable {

	// Fields

	private Integer lineId;
	private TbBasicinfo tbBasicinfo;
	private String pic;
	private String picDescription;

	// Constructors

	/** default constructor */
	public TbCulturescene() {
	}

	/** full constructor */
	public TbCulturescene(TbBasicinfo tbBasicinfo, String pic,
			String picDescription) {
		this.tbBasicinfo = tbBasicinfo;
		this.pic = pic;
		this.picDescription = picDescription;
	}

	// Property accessors

	public Integer getLineId() {
		return this.lineId;
	}

	public void setLineId(Integer lineId) {
		this.lineId = lineId;
	}

	public TbBasicinfo getTbBasicinfo() {
		return this.tbBasicinfo;
	}

	public void setTbBasicinfo(TbBasicinfo tbBasicinfo) {
		this.tbBasicinfo = tbBasicinfo;
	}

	public String getPic() {
		return this.pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getPicDescription() {
		return this.picDescription;
	}

	public void setPicDescription(String picDescription) {
		this.picDescription = picDescription;
	}

}