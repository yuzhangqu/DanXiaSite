package com.dx.bean;

/**
 * TbCultureinfo entity. @author MyEclipse Persistence Tools
 */

public class TbCultureinfo implements java.io.Serializable {

	// Fields

	private Integer basicId;
	private TbBasicinfo tbBasicinfo;
	private String nation;
	private String religion;
	private String architecture;
	private String antiquity;
	private String custom;
	private String cultureDescription;
	private String useType;
	private String useDegree;
	private String transport;
	private String protectCondition;
	private String useDescription;
	private String cultureOtherInfo;

	// Constructors

	/** default constructor */
	public TbCultureinfo() {
	}

	/** minimal constructor */
	public TbCultureinfo(TbBasicinfo tbBasicinfo) {
		this.tbBasicinfo = tbBasicinfo;
	}

	/** full constructor */
	public TbCultureinfo(TbBasicinfo tbBasicinfo, String nation,
			String religion, String architecture, String antiquity,
			String custom, String cultureDescription, String useType,
			String useDegree, String transport, String protectCondition,
			String useDescription, String cultureOtherInfo) {
		this.tbBasicinfo = tbBasicinfo;
		this.nation = nation;
		this.religion = religion;
		this.architecture = architecture;
		this.antiquity = antiquity;
		this.custom = custom;
		this.cultureDescription = cultureDescription;
		this.useType = useType;
		this.useDegree = useDegree;
		this.transport = transport;
		this.protectCondition = protectCondition;
		this.useDescription = useDescription;
		this.cultureOtherInfo = cultureOtherInfo;
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

	public String getNation() {
		return this.nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getReligion() {
		return this.religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getArchitecture() {
		return this.architecture;
	}

	public void setArchitecture(String architecture) {
		this.architecture = architecture;
	}

	public String getAntiquity() {
		return this.antiquity;
	}

	public void setAntiquity(String antiquity) {
		this.antiquity = antiquity;
	}

	public String getCustom() {
		return this.custom;
	}

	public void setCustom(String custom) {
		this.custom = custom;
	}

	public String getCultureDescription() {
		return this.cultureDescription;
	}

	public void setCultureDescription(String cultureDescription) {
		this.cultureDescription = cultureDescription;
	}

	public String getUseType() {
		return this.useType;
	}

	public void setUseType(String useType) {
		this.useType = useType;
	}

	public String getUseDegree() {
		return this.useDegree;
	}

	public void setUseDegree(String useDegree) {
		this.useDegree = useDegree;
	}

	public String getTransport() {
		return this.transport;
	}

	public void setTransport(String transport) {
		this.transport = transport;
	}

	public String getProtectCondition() {
		return this.protectCondition;
	}

	public void setProtectCondition(String protectCondition) {
		this.protectCondition = protectCondition;
	}

	public String getUseDescription() {
		return this.useDescription;
	}

	public void setUseDescription(String useDescription) {
		this.useDescription = useDescription;
	}

	public String getCultureOtherInfo() {
		return this.cultureOtherInfo;
	}

	public void setCultureOtherInfo(String cultureOtherInfo) {
		this.cultureOtherInfo = cultureOtherInfo;
	}

}