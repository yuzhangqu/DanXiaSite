package com.dx.bean;

/**
 * TbEnvironmentinfo entity. @author MyEclipse Persistence Tools
 */

public class TbEnvironmentinfo implements java.io.Serializable {

	// Fields

	private Integer basicId;
	private TbBasicinfo tbBasicinfo;
	private String climateType;
	private String jauTemperature;
	private String julTemperature;
	private String yearTemperature;
	private String yearPrecipitation;
	private String waterArea1;
	private String flowQuantity1;
	private String flowDirection1;
	private String waterTime1;
	private String waterDescription1;
	private String waterArea2;
	private String flowQuantity2;
	private String flowDirection2;
	private String waterTime2;
	private String waterDescription2;
	private String plantType;
	private String plantQuantity;
	private String specialPlant;
	private String animalQuantity;
	private String specialAnimal;
	private String overallEnvironment;
	private String forestCoverage;
	private String desertSign;
	private String ecologySign;
	private String disasterQuantity;
	private String recentDisaster;
	private String landsllideQuantity;
	private String recentLandslide;
	private String mudslideQuantity;
	private String recentMudslide;
	private String geologyDescription;
	private String environmentProblem;

	// Constructors

	/** default constructor */
	public TbEnvironmentinfo() {
	}

	/** minimal constructor */
	public TbEnvironmentinfo(TbBasicinfo tbBasicinfo) {
		this.tbBasicinfo = tbBasicinfo;
	}

	/** full constructor */
	public TbEnvironmentinfo(TbBasicinfo tbBasicinfo, String climateType,
			String jauTemperature, String julTemperature,
			String yearTemperature, String yearPrecipitation,
			String waterArea1, String flowQuantity1, String flowDirection1,
			String waterTime1, String waterDescription1, String waterArea2,
			String flowQuantity2, String flowDirection2, String waterTime2,
			String waterDescription2, String plantType, String plantQuantity,
			String specialPlant, String animalQuantity, String specialAnimal,
			String overallEnvironment, String forestCoverage,
			String desertSign, String ecologySign, String disasterQuantity,
			String recentDisaster, String landsllideQuantity,
			String recentLandslide, String mudslideQuantity,
			String recentMudslide, String geologyDescription,
			String environmentProblem) {
		this.tbBasicinfo = tbBasicinfo;
		this.climateType = climateType;
		this.jauTemperature = jauTemperature;
		this.julTemperature = julTemperature;
		this.yearTemperature = yearTemperature;
		this.yearPrecipitation = yearPrecipitation;
		this.waterArea1 = waterArea1;
		this.flowQuantity1 = flowQuantity1;
		this.flowDirection1 = flowDirection1;
		this.waterTime1 = waterTime1;
		this.waterDescription1 = waterDescription1;
		this.waterArea2 = waterArea2;
		this.flowQuantity2 = flowQuantity2;
		this.flowDirection2 = flowDirection2;
		this.waterTime2 = waterTime2;
		this.waterDescription2 = waterDescription2;
		this.plantType = plantType;
		this.plantQuantity = plantQuantity;
		this.specialPlant = specialPlant;
		this.animalQuantity = animalQuantity;
		this.specialAnimal = specialAnimal;
		this.overallEnvironment = overallEnvironment;
		this.forestCoverage = forestCoverage;
		this.desertSign = desertSign;
		this.ecologySign = ecologySign;
		this.disasterQuantity = disasterQuantity;
		this.recentDisaster = recentDisaster;
		this.landsllideQuantity = landsllideQuantity;
		this.recentLandslide = recentLandslide;
		this.mudslideQuantity = mudslideQuantity;
		this.recentMudslide = recentMudslide;
		this.geologyDescription = geologyDescription;
		this.environmentProblem = environmentProblem;
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

	public String getClimateType() {
		return this.climateType;
	}

	public void setClimateType(String climateType) {
		this.climateType = climateType;
	}

	public String getJauTemperature() {
		return this.jauTemperature;
	}

	public void setJauTemperature(String jauTemperature) {
		this.jauTemperature = jauTemperature;
	}

	public String getJulTemperature() {
		return this.julTemperature;
	}

	public void setJulTemperature(String julTemperature) {
		this.julTemperature = julTemperature;
	}

	public String getYearTemperature() {
		return this.yearTemperature;
	}

	public void setYearTemperature(String yearTemperature) {
		this.yearTemperature = yearTemperature;
	}

	public String getYearPrecipitation() {
		return this.yearPrecipitation;
	}

	public void setYearPrecipitation(String yearPrecipitation) {
		this.yearPrecipitation = yearPrecipitation;
	}

	public String getWaterArea1() {
		return this.waterArea1;
	}

	public void setWaterArea1(String waterArea1) {
		this.waterArea1 = waterArea1;
	}

	public String getFlowQuantity1() {
		return this.flowQuantity1;
	}

	public void setFlowQuantity1(String flowQuantity1) {
		this.flowQuantity1 = flowQuantity1;
	}

	public String getFlowDirection1() {
		return this.flowDirection1;
	}

	public void setFlowDirection1(String flowDirection1) {
		this.flowDirection1 = flowDirection1;
	}

	public String getWaterTime1() {
		return this.waterTime1;
	}

	public void setWaterTime1(String waterTime1) {
		this.waterTime1 = waterTime1;
	}

	public String getWaterDescription1() {
		return this.waterDescription1;
	}

	public void setWaterDescription1(String waterDescription1) {
		this.waterDescription1 = waterDescription1;
	}

	public String getWaterArea2() {
		return this.waterArea2;
	}

	public void setWaterArea2(String waterArea2) {
		this.waterArea2 = waterArea2;
	}

	public String getFlowQuantity2() {
		return this.flowQuantity2;
	}

	public void setFlowQuantity2(String flowQuantity2) {
		this.flowQuantity2 = flowQuantity2;
	}

	public String getFlowDirection2() {
		return this.flowDirection2;
	}

	public void setFlowDirection2(String flowDirection2) {
		this.flowDirection2 = flowDirection2;
	}

	public String getWaterTime2() {
		return this.waterTime2;
	}

	public void setWaterTime2(String waterTime2) {
		this.waterTime2 = waterTime2;
	}

	public String getWaterDescription2() {
		return this.waterDescription2;
	}

	public void setWaterDescription2(String waterDescription2) {
		this.waterDescription2 = waterDescription2;
	}

	public String getPlantType() {
		return this.plantType;
	}

	public void setPlantType(String plantType) {
		this.plantType = plantType;
	}

	public String getPlantQuantity() {
		return this.plantQuantity;
	}

	public void setPlantQuantity(String plantQuantity) {
		this.plantQuantity = plantQuantity;
	}

	public String getSpecialPlant() {
		return this.specialPlant;
	}

	public void setSpecialPlant(String specialPlant) {
		this.specialPlant = specialPlant;
	}

	public String getAnimalQuantity() {
		return this.animalQuantity;
	}

	public void setAnimalQuantity(String animalQuantity) {
		this.animalQuantity = animalQuantity;
	}

	public String getSpecialAnimal() {
		return this.specialAnimal;
	}

	public void setSpecialAnimal(String specialAnimal) {
		this.specialAnimal = specialAnimal;
	}

	public String getOverallEnvironment() {
		return this.overallEnvironment;
	}

	public void setOverallEnvironment(String overallEnvironment) {
		this.overallEnvironment = overallEnvironment;
	}

	public String getForestCoverage() {
		return this.forestCoverage;
	}

	public void setForestCoverage(String forestCoverage) {
		this.forestCoverage = forestCoverage;
	}

	public String getDesertSign() {
		return this.desertSign;
	}

	public void setDesertSign(String desertSign) {
		this.desertSign = desertSign;
	}

	public String getEcologySign() {
		return this.ecologySign;
	}

	public void setEcologySign(String ecologySign) {
		this.ecologySign = ecologySign;
	}

	public String getDisasterQuantity() {
		return this.disasterQuantity;
	}

	public void setDisasterQuantity(String disasterQuantity) {
		this.disasterQuantity = disasterQuantity;
	}

	public String getRecentDisaster() {
		return this.recentDisaster;
	}

	public void setRecentDisaster(String recentDisaster) {
		this.recentDisaster = recentDisaster;
	}

	public String getLandsllideQuantity() {
		return this.landsllideQuantity;
	}

	public void setLandsllideQuantity(String landsllideQuantity) {
		this.landsllideQuantity = landsllideQuantity;
	}

	public String getRecentLandslide() {
		return this.recentLandslide;
	}

	public void setRecentLandslide(String recentLandslide) {
		this.recentLandslide = recentLandslide;
	}

	public String getMudslideQuantity() {
		return this.mudslideQuantity;
	}

	public void setMudslideQuantity(String mudslideQuantity) {
		this.mudslideQuantity = mudslideQuantity;
	}

	public String getRecentMudslide() {
		return this.recentMudslide;
	}

	public void setRecentMudslide(String recentMudslide) {
		this.recentMudslide = recentMudslide;
	}

	public String getGeologyDescription() {
		return this.geologyDescription;
	}

	public void setGeologyDescription(String geologyDescription) {
		this.geologyDescription = geologyDescription;
	}

	public String getEnvironmentProblem() {
		return this.environmentProblem;
	}

	public void setEnvironmentProblem(String environmentProblem) {
		this.environmentProblem = environmentProblem;
	}

}