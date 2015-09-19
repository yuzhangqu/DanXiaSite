package com.dx.action;


import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import com.dx.servlet.MyDataClass;
import com.dx.action.SessionAction;
import com.dx.bean.TbAuditinfo;
import com.dx.bean.TbBasicinfo;
import com.dx.bean.TbCountrylevel;
import com.dx.bean.TbCultureinfo;
import com.dx.bean.TbCulturescene;
import com.dx.bean.TbEnvironmentinfo;
import com.dx.bean.TbGeneralpic;
import com.dx.bean.TbGeologyinfo;
import com.dx.bean.TbGeologyscene;
import com.dx.bean.TbInvestigatorinfo;
import com.dx.bean.TbLakelevel;
import com.dx.bean.TbLandmarkscene;
import com.dx.bean.TbProvincelevel;
import com.dx.bean.TbWorldlevel;
import com.dx.dao.TbAuditinfoDAO;
import com.dx.dao.TbBasicinfoDAO;
import com.dx.dao.TbCountrylevelDAO;
import com.dx.dao.TbCultureinfoDAO;
import com.dx.dao.TbCulturesceneDAO;
import com.dx.dao.TbEnvironmentinfoDAO;
import com.dx.dao.TbGeneralpicDAO;
import com.dx.dao.TbGeologyinfoDAO;
import com.dx.dao.TbGeologysceneDAO;
import com.dx.dao.TbInvestigatorinfoDAO;
import com.dx.dao.TbLakelevelDAO;
import com.dx.dao.TbLandmarksceneDAO;
import com.dx.dao.TbProvincelevelDAO;
import com.dx.dao.TbWorldlevelDAO;
public class SaveInfoAction extends SessionAction{
	private TbBasicinfoDAO tbBasicinfoDAO;
	private TbGeologyinfoDAO tbGeologyinfoDAO;
	private TbEnvironmentinfoDAO tbEnvironmentinfoDAO;
	private TbCultureinfoDAO tbCultureinfoDAO;
	private TbInvestigatorinfoDAO tbInvestigatorinfoDAO;
	private TbWorldlevelDAO tbWorldlevelDAO;
	private TbCountrylevelDAO tbCountrylevelDAO;
	private TbProvincelevelDAO tbProvincelevelDAO;
	private TbLakelevelDAO tbLakelevelDAO;
	private TbGeneralpicDAO tbGeneralpicDAO;
	private TbLandmarksceneDAO tbLandmarksceneDAO;
	private TbGeologysceneDAO tbGeologysceneDAO;
	private TbCulturesceneDAO tbCulturesceneDAO;
	private TbAuditinfoDAO tbAuditinfoDAO;
	
	
	//BasicInfo
	//private Integer basicId;
    private String nameCurrent;
    private String nameOther;
    private String regionProvince;
    private String regionCity;
    private String regionDistrict;
    private String regionSpecification;
    private String agencyName;
    private String agencyAffiliation;
    private String agencyOfficePosition;
    private String agencyLinkman;
    private String agencyMobilePhone;
    private String agencyOfficePhone;
    private String agencyFax;
    private String agencyEmail;
    private String agencyWebsite;
    private String agencyOtherInfo;
    
    //GeologyInfo
    private TbBasicinfo tbBasicinfo;
    
    
	private String northLatitude;
	private String northLongitude;
	private String southLatitude;
	private String southLongitude;
	private String eastLatitude;
	private String eastLongitude;
	private String westLatitude;
	private String westLongitude;
	private String centerLatitude;
	private String centerLongitude;
	private String reliefContinuousArea;
	private String redbedContinuousArea;
	private String redbedTotalArea;
	private String lowAltitude;
	private String highAltitude;
	private String mediumAltitude;
	private String redbedAge;
	private String redbedAgeDescription;
	private String stratumName1;
	private String stratumDescription1;
	private String stratumName2;
	private String stratumDescription2;
	private String thickName1;
	private String thickness1;
	private String thickName2;
	private String thickness2;
	private String offshore1;
	private String offshore2;
	private String eolianDeposit;
	private String eolianDepositDescription;
	private String conglomerateSize;
	private String conglomerateColor;
	private String conglomerateIngredient;
	private String conglomerateCement;
	private String conglomerateStructure;
	private String conglomerateResistence;
	private String conglomerateFossil;
	private String conglomerateAppearance;
	private String conglomeratePickup;
	private String sandstoneSize;
	private String sandstoneColor;
	private String sandstoneIngredient;
	private String sandstoneCement;
	private String sandstoneStructure;
	private String sandstoneResistence;
	private String sandstoneFossil;
	private String sandstoneAppearance;
	private String sandstonePickup;
	private String siltstoneSize;
	private String siltstoneColor;
	private String siltstoneIngredient;
	private String siltstoneCement;
	private String siltstoneStructure;
	private String siltstoneResistence;
	private String siltstoneFossil;
	private String siltstoneAppearance;
	private String siltstonePickup;
	private String claySize;
	private String clayColor;
	private String clayIngredient;
	private String clayCement;
	private String clayStructure;
	private String clayResistence;
	private String clayFossil;
	private String clayAppearance;
	private String clayPickup;
	private String structurePosition;
	private String basinName;
	private String basinAge;
	private String structureMotion;
	private String structureLine;
	private String crumple;
	private String fault;
	private String joint;
	private String structureDescription;
	private String reliefUnit;
	private String reliefPosition;
	private String terrain;
	private String reliefDescription;
	private String dependentType;
	private String dependentAppearance;
	private String dependentForce;
	private String slopeType;
	private String slopeRock;
	private String slopeBody;
	private String danxiaRavine;
	private String danxiaWall;
	private String danxiaCave;
	private String danxiaValt;
	private String dependentShape;
	private String dependentStage;
	private String dependentDescription;
	private String cliffMaxHeight;
	private String cliffMediumHeight;
	private String cliffMaxGradient;
	private String cliffMediumGradient;
	private String slopeShape;
	private String cornerType;
	private String slopeDescription;
	private String landmarkScene;
	private String specialScene;
	private String reliefStructure;
	private String overallScene;
    
	//TbEnvironmentinfo
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
	
	//TbCultureinfo
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
    
	
	//tbInvestigatorinfo 
	private String investigatorName;
	private String investigatorSex;
	private String investigatorAge;
	private String investigatorCompany;
	private String investigatorPosition;
	private String investigatorMailAddr;
	private String investigatorPostcode;
	private String investigatorPhone;
	private String investigatorFax;
	private String investigatorEmail;
	private String investigatorSubmitTime;
    
	//tbAuditinfo
	private String suggestions;
	private String signature;
	private String responsibility;
	private String company;
	private String address;
	private String phone;
	private String fax;
	private String email;
	private String date;
	
	//tbGeneralpicinfo
	 private	Integer	picNum;
	 private 	File mylakeLevelPic	;
	 private	String mylakeLevelPicPath;
	 private 	String mylakeLevelPicContentType;
	 private 	String mylakeLevelPicFileName;
	 
	 private 	String 	mylakeLevelPicDescription	;
	 
	 private 	File 	myconglomeratePic	;
	 private	String	myconglomeratePicPath;
	 private 	String 	myconglomeratePicContentType	;
	 private 	String 	myconglomeratePicFileName	;
	 
	 private 	String 	myconglomeratePicDescription	;
	 
	 private 	File 	mysandstonePic	;
	 private	String	mysandstonePicPath;
	 private	String	mysandstonePicContentType;
	 private	String	mysandstonePicFileName;
	  
	 private 	String 	mysandstonePicDescription	;
	 
	 private 	File 	mysiltstonePic	;
	 private	String	mysiltstonePicPath;
	 private	String	mysiltstonePicContentType;
	 private	String	mysiltstonePicFileName; 
	 
	 private 	String 	mysiltsstonePicDescription	;
	 
	 private 	File 	myclayPic	;
	 private 	String 	myclayPicPath	;
	 private 	String 	myclayPicContentType	;
	 private 	String 	myclayPicFileName	;
	 
	 private 	String 	myclayPicDescription	;
	 
	 private 	File 	mybasinLinePic	;
	 private 	String 	mybasinLinePicPath	;
	 private 	String 	mybasinLinePicContentType	;
	 private 	String 	mybasinLinePicFileName	;
	 
	 private 	String 	mybasinLinePicDescription	;
	 
	 private 	File 	mybasinPositionPic	;
	 private 	String 	mybasinPositionPicPath	;
	 private 	String 	mybasinPositionPicContentType	;
	 private 	String 	mybasinPositionPicFileName	;
	 
	 private 	String 	mybasinPositionPicDescription	;
	 
	 private 	File 	mybasinGeologyPic	;
	 private 	String 	mybasinGeologyPicPath	;
	 private 	String 	mybasinGeologyPicContentType	;
	 private 	String 	mybasinGeologyPicFileName	;
	 
	 
	 private 	String 	mybasinGeologyPicDescription	;
	 
	 private 	File 	myterrainPic	;
	 private 	String 	myterrainPicPath	;
	 private 	String 	myterrainPicContentType	;
	 private 	String 	myterrainPicFileName	;
	 
	 private 	String 	myterrainPicDescription	;
	 
	 private 	File 	mychanzhuangPic1	;
	 private 	String 	mychanzhuangPic1Path	;
	 private 	String 	mychanzhuangPic1ContentType	;
	 private 	String 	mychanzhuangPic1FileName	;
	 
	 private 	String 	mychanzhuangPic1Description	;
	 
	 private 	File 	mychanzhuangPic2	;
	 private 	String 	mychanzhuangPic2Path	;
	 private 	String 	mychanzhuangPic2ContentType	;
	 private 	String 	mychanzhuangPic2FileName	;
	 
	 private 	String 	mychanzhuangPic2Description	;
	 
	 private 	File 	mypositiveReliefPic	;
	 private 	String 	mypositiveReliefPicPath	;
	 private 	String 	mypositiveReliefPicContentType	;
	 private 	String 	mypositiveReliefPicFileName	;
	 
	 private 	String 	mypositiveReliefPicDecsription	;
	 
	 private 	File 	mynegativeReliefPic	;
	 private 	String 	mynegativeReliefPicPath	;
	 private 	String 	mynegativeReliefPicContentType	;
	 private 	String 	mynegativeReliefPicFileName	;
	 
	 private 	String 	mynegativeReliefPicDecsription	;
	 
	 private 	File 	myreliefPic	;
	 private 	String 	myreliefPicPath	;
	 private 	String 	myreliefPicContentType	;
	 private 	String 	myreliefPicFileName	;
	 
	 private 	String 	myreliefPicDescription	;
	 
	 private 	File 	mydependentShapePic	;
	 private 	String 	mydependentShapePicPath	;
	 private 	String 	mydependentShapePicContentType	;
	 private 	String 	mydependentShapePicFileName	;
	 
	 private 	String 	mydependentShapePicDescription	;
	 
	 private 	File 	myslopeShapePic	;
	 private 	String 	myslopeShapePicPath	;
	 private 	String 	myslopeShapePicContentType	;
	 private 	String 	myslopeShapePicFileName	;
	 
	 private 	String 	myslopeShapePicDescription	;
	 
	 private 	File 	myoverallScenePic	;
	 private 	String 	myoverallScenePicPath	;
	 private 	String 	myoverallScenePicContentType	;
	 private 	String 	myoverallScenePicFileName	;
	 
	 private 	String 	myoverallScenePicDescription	;
	 
	 private 	File 	myoverallEnvironmentPic	;
	 private 	String 	myoverallEnvironmentPicPath	;
	 private 	String 	myoverallEnvironmentPicContentType	;
	 private 	String 	myoverallEnvironmentPicFileName	;
	 
	 private 	String 	myoverallEnvironmentPicDescription	;
     //tbCulturescene
	 private 	File culPic1	;
	 private	String culPic1Path;
	 private 	String culPic1FileName;
	 private 	String 	culPic1Description;
	 private	String culPic1ContentType;
	 
	 private 	File culPic2	;
	 private	String culPic2Path;
	 private 	String culPic2FileName;
	 private 	String 	culPic2Description;
	 private 	String culPic2ContentType;
	  
	 private 	File culPic3	;
	 private	String culPic3Path;
	 private 	String culPic3FileName;
	 private 	String culPic3Description;
	 private 	String culPic3ContentType;
	 
	 private 	File culPic4	;
	 private	String culPic4Path;
	 private 	String culPic4FileName;
	 private 	String 	culPic4Description;
	 private	String culPic4ContentType;
	 
	 private 	File culPic5	;
	 private	String culPic5Path;
	 private 	String culPic5FileName;
	 private 	String 	culPic5Description;
	 private	String culPic5ContentType;
	 
	 //TbGeologyScene 
	 private 	File geoPic1	;
	 private	String geoPic1Path;
	 private 	String geoPic1FileName;
	 private 	String geoPic1Description;
	 private	String geoPic1ContentType;
	 
	 private 	File geoPic2	;
	 private	String geoPic2Path;
	 private 	String geoPic2FileName;
	 private 	String 	geoPic2Description;
	 private 	String geoPic2ContentType;
	  
	 private 	File geoPic3	;
	 private	String geoPic3Path;
	 private 	String geoPic3FileName;
	 private 	String geoPic3Description;
	 private 	String geoPic3ContentType;
	 
	 private 	File geoPic4	;
	 private	String geoPic4Path;
	 private 	String geoPic4FileName;
	 private 	String 	geoPic4Description;
	 private	String geoPic4ContentType;
	 
	 private 	File geoPic5	;
	 private	String geoPic5Path;
	 private 	String geoPic5FileName;
	 private 	String 	geoPic5Description;
	 private	String geoPic5ContentType;
	 //TbLandmarkScene
	 private 	File ldmPic1	;
	 private	String ldmPic1Path;
	 private 	String ldmPic1FileName;
	 private 	String 	ldmPic1Description;
	 private	String ldmPic1ContentType;
	 
	 private 	File ldmPic2	;
	 private	String ldmPic2Path;
	 private 	String ldmPic2FileName;
	 private 	String 	ldmPic2Description;
	 private 	String ldmPic2ContentType;
	  
	 private 	File ldmPic3	;
	 private	String ldmPic3Path;
	 private 	String ldmPic3FileName;
	 private 	String ldmPic3Description;
	 private 	String ldmPic3ContentType;
	 
	 private 	File ldmPic4	;
	 private	String ldmPic4Path;
	 private 	String ldmPic4FileName;
	 private 	String 	ldmPic4Description;
	 private	String ldmPic4ContentType;
	 
	 private 	File ldmPic5	;
	 private	String ldmPic5Path;
	 private 	String ldmPic5FileName;
	 private 	String 	ldmPic5Description;
	 private	String ldmPic5ContentType;
	 
	//fields to save relationship data
     private String[] provinceLevel; 
	 private String[] countryLevel;
	 private String[] worldLevel;
	 private String[] lakeLevel;
	 
	 private Set<TbLakelevel> tbLakelevels;
	 private Set<TbCulturescene> tbCulturescenes;
	 private Set<TbLandmarkscene> tbLandmarkscenes;
	 private TbGeneralpic tbGeneralpic;
	 private TbCultureinfo tbCultureinfo;
	 private TbEnvironmentinfo tbEnvironmentinfo;
	 private TbGeologyinfo tbGeologyinfo;
	 private Set<TbGeologyscene> tbGeologyscenes;
	 private TbInvestigatorinfo tbInvestigatorinfo;
	 private Set<TbProvincelevel> tbProvincelevels;
	 private TbAuditinfo tbAuditinfo;
	 private Set<TbCountrylevel> tbCountrylevels;
	 private Set<TbWorldlevel> tbWorldlevels;
	 
	 //private Set<TbBasicinfo> tbBasicinfos = new HashSet<TbBasicinfo>(0);
	 
    public String execute(){
    	tbLandmarkscenes = new HashSet<TbLandmarkscene>(0);
    	tbCulturescenes = new HashSet<TbCulturescene>(0);
    	tbGeologyscenes = new HashSet<TbGeologyscene>(0);
    	
    	tbLakelevels = new HashSet<TbLakelevel>(0);
    	tbProvincelevels = new HashSet<TbProvincelevel>(0);
    	tbCountrylevels = new HashSet<TbCountrylevel>(0);
    	tbWorldlevels = new HashSet<TbWorldlevel>(0);
    	 picNum = 1;
    	 TbBasicinfo basicInfo = new TbBasicinfo(
 				nameCurrent,
 				nameOther,
 				regionProvince,
 				regionCity,
 				regionDistrict,
 				regionSpecification,
 				agencyName,
 				agencyAffiliation,
 				agencyOfficePosition,
 				agencyLinkman,
 				agencyMobilePhone,
 				agencyOfficePhone,
 				agencyFax,
 				agencyEmail,
 				agencyWebsite,
 				agencyOtherInfo,
 				null,
 			    null,
 			    null,
 				null,
 				null,
 				null,
 				null,
 				null,
 				null,
 				null,
 				null,
 				null,
 				null
 				);
 		//generate the picture file i
 		mylakeLevelPicPath = generatePic(mylakeLevelPic,mylakeLevelPicFileName,MyDataClass.generalPicPath);
 		System.out.println(myconglomeratePicPath);
 		myconglomeratePicPath = generatePic(myconglomeratePic,myconglomeratePicFileName,MyDataClass.generalPicPath);
 		mysandstonePicPath = generatePic(mysandstonePic,mysandstonePicFileName,MyDataClass.generalPicPath);
 		mysiltstonePicPath = generatePic(mysiltstonePic,mysiltstonePicFileName,MyDataClass.generalPicPath);
 		myclayPicPath = generatePic(myclayPic,myclayPicFileName,MyDataClass.generalPicPath);
 		mybasinLinePicPath = generatePic(mybasinLinePic,mybasinLinePicFileName,MyDataClass.generalPicPath);
 		mybasinPositionPicPath = generatePic(mybasinPositionPic,mybasinPositionPicFileName,MyDataClass.generalPicPath);
 		mybasinGeologyPicPath = generatePic(mybasinGeologyPic,mybasinGeologyPicFileName,MyDataClass.generalPicPath);
 		myterrainPicPath = generatePic(myterrainPic,myterrainPicFileName,MyDataClass.generalPicPath);
 		mychanzhuangPic1Path = generatePic(mychanzhuangPic1,mychanzhuangPic1FileName,MyDataClass.generalPicPath);
 		mychanzhuangPic2Path = generatePic(mychanzhuangPic2,mychanzhuangPic2FileName,MyDataClass.generalPicPath);
 		mypositiveReliefPicPath = generatePic(mypositiveReliefPic,mypositiveReliefPicFileName,MyDataClass.generalPicPath);
 		mynegativeReliefPicPath = generatePic(mynegativeReliefPic,mynegativeReliefPicFileName,MyDataClass.generalPicPath);
 		myreliefPicPath = generatePic(myreliefPic,myreliefPicFileName,MyDataClass.generalPicPath);
 		mydependentShapePicPath = generatePic(mydependentShapePic,mydependentShapePicFileName,MyDataClass.generalPicPath);
 		myslopeShapePicPath = generatePic(myslopeShapePic,myslopeShapePicFileName,MyDataClass.generalPicPath);
 		myoverallScenePicPath = generatePic(myoverallScenePic,myoverallScenePicFileName,MyDataClass.generalPicPath);
 		myoverallEnvironmentPicPath = generatePic(myoverallEnvironmentPic,myoverallEnvironmentPicFileName,MyDataClass.generalPicPath);

 		
 		culPic1Path = generatePic(culPic1,culPic1FileName,MyDataClass.cultureScenePath);
		culPic2Path = generatePic(culPic2,culPic2FileName,MyDataClass.cultureScenePath);
		culPic3Path = generatePic(culPic3,culPic3FileName,MyDataClass.cultureScenePath);
		culPic4Path = generatePic(culPic4,culPic4FileName,MyDataClass.cultureScenePath);
		culPic5Path = generatePic(culPic5,culPic5FileName,MyDataClass.cultureScenePath);
		if(culPic1Path != null)
		{
			TbCulturescene cultureScene = new TbCulturescene(
					basicInfo,
					culPic1Path,
					culPic1Description);
			tbCulturescenes.add(cultureScene);
		}
		if(culPic2Path != null)
		{
			TbCulturescene cultureScene = new TbCulturescene(
					basicInfo,
					culPic2Path,
					culPic2Description);
			tbCulturescenes.add(cultureScene);
		}
		if(culPic3Path != null)
		{
			TbCulturescene cultureScene = new TbCulturescene(
					basicInfo,
					culPic3Path,
					culPic3Description);
			tbCulturescenes.add(cultureScene);
		}
		if(culPic4Path != null)
		{
			TbCulturescene cultureScene = new TbCulturescene(
					basicInfo,
					culPic4Path,
					culPic4Description);
			tbCulturescenes.add(cultureScene);
		}
		if(culPic5Path != null)
		{
			TbCulturescene cultureScene = new TbCulturescene(
					basicInfo,
					culPic5Path,
					culPic5Description);
			tbCulturescenes.add(cultureScene);
		}
		
		geoPic1Path = generatePic(geoPic1,geoPic1FileName,MyDataClass.geologyScenePath);
		geoPic2Path = generatePic(geoPic2,geoPic2FileName,MyDataClass.geologyScenePath);
		geoPic3Path = generatePic(geoPic3,geoPic3FileName,MyDataClass.geologyScenePath);
		geoPic4Path = generatePic(geoPic4,geoPic4FileName,MyDataClass.geologyScenePath);
		geoPic5Path = generatePic(geoPic5,geoPic5FileName,MyDataClass.geologyScenePath);
		if(geoPic1Path != null)
		{
			TbGeologyscene geologyScene = new TbGeologyscene(
					basicInfo,
					geoPic1Path,
					geoPic1Description);
			tbGeologyscenes.add(geologyScene);
		}
		if(geoPic2Path != null)
		{
			TbGeologyscene geologyScene = new TbGeologyscene(
					basicInfo,
					geoPic2Path,
					geoPic2Description);
			tbGeologyscenes.add(geologyScene);
		}
		if(geoPic3Path != null)
		{
			TbGeologyscene geologyScene = new TbGeologyscene(
					basicInfo,
					geoPic3Path,
					geoPic3Description);
			tbGeologyscenes.add(geologyScene);
		}
		if(geoPic4Path != null)
		{
			TbGeologyscene geologyScene = new TbGeologyscene(
					basicInfo,
					geoPic4Path,
					geoPic4Description);
			tbGeologyscenes.add(geologyScene);
		}
		if(geoPic5Path != null)
		{
			TbGeologyscene geologyScene = new TbGeologyscene(
					basicInfo,
					geoPic5Path,
					geoPic5Description);
			tbGeologyscenes.add(geologyScene);
		}
		ldmPic1Path = generatePic(ldmPic1,ldmPic1FileName,MyDataClass.landmarkScenePath);
		ldmPic2Path = generatePic(ldmPic2,ldmPic2FileName,MyDataClass.landmarkScenePath);
		ldmPic3Path = generatePic(ldmPic3,ldmPic3FileName,MyDataClass.landmarkScenePath);
		ldmPic4Path = generatePic(ldmPic4,ldmPic4FileName,MyDataClass.landmarkScenePath);
		ldmPic5Path = generatePic(ldmPic5,ldmPic5FileName,MyDataClass.landmarkScenePath);
		
		if(ldmPic1Path != null)
		{
			
			TbLandmarkscene landmarkScene = new TbLandmarkscene(
					basicInfo,
					ldmPic1Path,
					ldmPic1Description);
			tbLandmarkscenes.add(landmarkScene);
		}
		if(ldmPic2Path != null)
		{
			
			TbLandmarkscene landmarkScene = new TbLandmarkscene(
					basicInfo,
					ldmPic2Path,
					ldmPic2Description);
			tbLandmarkscenes.add(landmarkScene);
		}
		if(ldmPic3Path != null)
		{
			
			TbLandmarkscene landmarkScene = new TbLandmarkscene(
					basicInfo,
					ldmPic3Path,
					ldmPic3Description);
			tbLandmarkscenes.add(landmarkScene);
		}
		if(ldmPic4Path != null)
		{
			
			TbLandmarkscene landmarkScene = new TbLandmarkscene(
					basicInfo,
					ldmPic4Path,
					ldmPic4Description);
			tbLandmarkscenes.add(landmarkScene);
		}
		if(ldmPic5Path != null)
		{
			
			TbLandmarkscene landmarkScene = new TbLandmarkscene(
					basicInfo,
					ldmPic5Path,
					ldmPic5Description);
			tbLandmarkscenes.add(landmarkScene);
		}
		//tbBasicinfos.clear();
		//System.out.println(tbBasicinfos.size());
		//Iterator<TbBasicinfo> itbasicinfo = tbBasicinfos.iterator();		
		//while(itbasicinfo.hasNext())
		//{			
		//	tbBasicinfos.((BasicInfoProvinceLevel) itProvince.next());
		//}
		//tbBasicinfos.add(basicInfo);
		for (int i = 0; i < provinceLevel.length; ++i) {
			TbProvincelevel tbProvincelevel = tbProvincelevelDAO
					.findById(provinceLevel[i].toString());
			if (tbProvincelevel != null) {
				tbProvincelevels.add(tbProvincelevel);
			}
		}
		for (int i = 0; i < worldLevel.length; ++i) {
			TbWorldlevel tbWorldlevel = tbWorldlevelDAO
					.findById(worldLevel[i].toString());
			if (tbWorldlevel != null) {
				tbWorldlevels.add(tbWorldlevel);
			}
		}

		// TODO
		for (int i = 0; i < countryLevel.length; ++i) {
			TbCountrylevel tbCountrylevel= tbCountrylevelDAO.findById(countryLevel[i]
					.toString());
			if (tbCountrylevel != null) {
				// System.out.println(tbCountrylevel.getCountryLevelId());
				// tbCountrylevel.setTbBasicinfos(tbBasicinfos);
				tbCountrylevels.add(tbCountrylevel);

			}
		}
		for (int i = 0; i < lakeLevel.length; ++i) {
			TbLakelevel tbLakelevel = null;
			tbLakelevel = tbLakelevelDAO.findById(lakeLevel[i].toString());

			if (tbLakelevel != null) {
				tbLakelevels.add(tbLakelevel);
			}
		}
    	TbGeologyinfo geologyInfo = new TbGeologyinfo(
				basicInfo,
				northLatitude,				
				northLongitude,
				southLatitude,
				southLongitude,
				eastLatitude,
				eastLongitude,
				westLatitude,
				westLongitude,
				centerLatitude,
				centerLongitude,
				reliefContinuousArea,
				redbedContinuousArea,
				redbedTotalArea,
				lowAltitude,
				highAltitude,
				mediumAltitude,
				redbedAge,
				redbedAgeDescription,
				stratumName1,
				stratumDescription1,
				stratumName2,
				stratumDescription2,
				thickName1,
				thickness1,
				thickName2,
				thickness2,
				offshore1,
				offshore2,
				eolianDeposit,
				eolianDepositDescription,
				conglomerateSize,
				conglomerateColor,
				conglomerateIngredient,
				conglomerateCement,
				conglomerateStructure,
				conglomerateResistence,
				conglomerateFossil,
				conglomerateAppearance,
				conglomeratePickup,
				sandstoneSize,
				sandstoneColor,
				sandstoneIngredient,
				sandstoneCement,
				sandstoneStructure,
				sandstoneResistence,
				sandstoneFossil,
				sandstoneAppearance,
				sandstonePickup,
				siltstoneSize,
				siltstoneColor,
				siltstoneIngredient,
				siltstoneCement,
				siltstoneStructure,
				siltstoneResistence,
				siltstoneFossil,
				siltstoneAppearance,
				siltstonePickup,
				claySize,
				clayColor,
				clayIngredient,
				clayCement,
				clayStructure,
				clayResistence,
				clayFossil,
				clayAppearance,
				clayPickup,
				structurePosition,
				basinName,
				basinAge,
				structureMotion,
				structureLine,
				crumple,
				fault,
				joint,
				structureDescription,
				reliefUnit,
				reliefPosition,
				terrain,
				reliefDescription,
				dependentType,
				dependentAppearance,
				dependentForce,
				slopeType,
				slopeRock,
				slopeBody,
				danxiaRavine,
				danxiaWall,
				danxiaCave,
				danxiaValt,
				dependentShape,
				dependentStage,
				dependentDescription,
				cliffMaxHeight,
				cliffMediumHeight,
				cliffMaxGradient,
				cliffMediumGradient,
				slopeShape,
				cornerType,
				slopeDescription,
				landmarkScene,
				specialScene,
				reliefStructure,
				overallScene
);
    	TbEnvironmentinfo environmentInfo = new TbEnvironmentinfo(
    			basicInfo,
				climateType,
				jauTemperature,
				julTemperature,
				yearTemperature,
				yearPrecipitation,
				waterArea1,
				flowQuantity1,
				flowDirection1,
				waterTime1,
				waterDescription1,
				waterArea2,
				flowQuantity2,
				flowDirection2,
				waterTime2,
				waterDescription2,
				plantType,
				plantQuantity,
				specialPlant,
				animalQuantity,
				specialAnimal,
				overallEnvironment,
				forestCoverage,
				desertSign,
				ecologySign,
				disasterQuantity,
				recentDisaster,
				landsllideQuantity,
				recentLandslide,
				mudslideQuantity,
				recentMudslide,
				geologyDescription,
				environmentProblem
		);
    	
    	TbCultureinfo cultureInfo = new TbCultureinfo(
    			basicInfo,
				nation,				
				religion,
				architecture,
				antiquity,
				custom,
				cultureDescription,
				useType,
				useDegree,
				transport,
				protectCondition,
				useDescription,
				cultureOtherInfo
		);
    	TbInvestigatorinfo investigatorInfo = new TbInvestigatorinfo(
    			basicInfo,
				investigatorName,
				investigatorSex,
				investigatorAge,
				investigatorCompany,
				investigatorPosition,
				investigatorMailAddr,
				investigatorPostcode,
				investigatorPhone,
				investigatorFax,
				investigatorEmail,
				investigatorSubmitTime
		);
    	TbAuditinfo auditinfo = new TbAuditinfo(
    			basicInfo,
				suggestions,
				signature,
				responsibility,
				company,
				address,
				phone,
				fax,
				email,
				date
		);
		
		TbGeneralpic generalPic = new TbGeneralpic(				
				basicInfo,
				mylakeLevelPicPath,
				mylakeLevelPicDescription,
				myconglomeratePicPath,
				myconglomeratePicDescription,
				mysandstonePicPath,
				mysandstonePicDescription,
				mysiltstonePicPath,
				mysiltsstonePicDescription,
				myclayPicPath,
				myclayPicDescription,
				mybasinLinePicPath,
				mybasinLinePicDescription,
				mybasinPositionPicPath,
				mybasinPositionPicDescription,
				mybasinGeologyPicPath,
				mybasinGeologyPicDescription,
				myterrainPicPath,
				myterrainPicDescription,
				mychanzhuangPic1Path,
				mychanzhuangPic1Description,
				mychanzhuangPic2Path,
				mychanzhuangPic2Description,
				mypositiveReliefPicPath,
				mypositiveReliefPicDecsription,
				mynegativeReliefPicPath,
				mynegativeReliefPicDecsription,
				myreliefPicPath,
				myreliefPicDescription,
				mydependentShapePicPath,
				mydependentShapePicDescription,
				myslopeShapePicPath,
				myslopeShapePicDescription,
				myoverallScenePicPath,
				myoverallScenePicDescription,
				myoverallEnvironmentPicPath,
				myoverallEnvironmentPicDescription
	
			);
		
		basicInfo.setTbAuditinfo(auditinfo);
		
		basicInfo.setTbCultureinfo(cultureInfo);
		basicInfo.setTbCulturescenes(tbCulturescenes);
		basicInfo.setTbEnvironmentinfo(environmentInfo);
		basicInfo.setTbGeneralpic(generalPic);
		basicInfo.setTbGeologyinfo(geologyInfo);
		basicInfo.setTbGeologyscenes(tbGeologyscenes);
		basicInfo.setTbInvestigatorinfo(investigatorInfo);
		basicInfo.setTbLandmarkscenes(tbLandmarkscenes);
		System.out.println(tbCountrylevels.size());
		basicInfo.setTbCountrylevels(tbCountrylevels);
		basicInfo.setTbLakelevels(tbLakelevels);
		basicInfo.setTbProvincelevels(tbProvincelevels);
		basicInfo.setTbWorldlevels(tbWorldlevels);
		
    	tbBasicinfoDAO.save(basicInfo);
    	//tbGeologyinfoDAO.save(geologyInfo);
    	//tbEnvironmentinfoDAO.save(environmentInfo);
    	//tbCultureinfoDAO.save(cultureInfo);
    	//tbInvestigatorinfoDAO.save(investigatorInfo);
    	//tbAuditinfoDAO.save(auditinfo);
    	//tbGeneralpicDAO.save(generalPic);
    	return "success";
    }
    
    public String generatePic(File pic, String picName, String path){
		if (pic==null)
			return null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss_SSS"+picNum);
		picNum++;
		String ly_time = sdf.format(new java.util.Date());
		String prefix = "gnl_";
		String[] extentTemp = picName.split("\\.");
		String extent = extentTemp[extentTemp.length-1];
		byte[] bytes = null;
		try {
			bytes = toByteArray(pic);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("generatePic error 1");
			e.printStackTrace();
		}

		FileOutputStream bos;
		try {
			bos = new FileOutputStream(path+prefix+ly_time+"."+extent);
			bos.write(bytes);
			bos.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("no here");
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("no here");
			e.printStackTrace();
		}
		String finalPath = prefix + ly_time+"."+extent;
		return finalPath;
	}
	
	public static byte[] toByteArray(File f) throws IOException{  
        
          
        if(!f.exists()){  
        	System.out.println("toByteArray error");
            throw new FileNotFoundException(f.getName());  
        }  
  
        ByteArrayOutputStream bos = new ByteArrayOutputStream((int)f.length());  
        BufferedInputStream in = null;  
        try{  
            in = new BufferedInputStream(new FileInputStream(f));  
            int buf_size = (int) f.length();  
            byte[] buffer = new byte[buf_size];  
            int len = 0;  
            while(-1 != (len = in.read(buffer,0,buf_size))){  
                bos.write(buffer,0,len);  
            }  
            buffer = null;
            System.gc();
            return bos.toByteArray();  
        }catch (IOException e) {  
        	System.out.println("toByteArray error 1");
            e.printStackTrace();  
            throw e;  
        }finally{  
            try{  
            	System.out.println("toByteArray error 2");
                in.close(); 
                bos.close();
            }catch (IOException e) {  
            	System.out.println("toByteArray error 3");
                e.printStackTrace();  
            }  
            bos.close();  
        }  
    }
	
	
	

	//tbRelations setters and getters
	public String[] getProvinceLevel() {
		return provinceLevel;
	}

	public void setProvinceLevel(String[] provinceLevel) {
		this.provinceLevel = provinceLevel;
	}

	public String[] getCountryLevel() {
		return countryLevel;
	}

	public void setCountryLevel(String[] countryLevel) {
		this.countryLevel = countryLevel;
	}

	public String[] getWorldLevel() {
		return worldLevel;
	}

	public void setWorldLevel(String[] worldLevel) {
		this.worldLevel = worldLevel;
	}

	public String[] getLakeLevel() {
		return lakeLevel;
	}

	public void setLakeLevel(String[] lakeLevel) {
		this.lakeLevel = lakeLevel;
	}
	
	
	//tbLandmarkScene setters and getters
	
	public File getLdmPic1() {
		return ldmPic1;
	}

	public void setLdmPic1(File ldmPic1) {
		this.ldmPic1 = ldmPic1;
	}

	public String getLdmPic1Path() {
		return ldmPic1Path;
	}

	public void setLdmPic1Path(String ldmPic1Path) {
		this.ldmPic1Path = ldmPic1Path;
	}

	public String getLdmPic1FileName() {
		return ldmPic1FileName;
	}

	public void setLdmPic1FileName(String ldmPic1FileName) {
		this.ldmPic1FileName = ldmPic1FileName;
	}

	public String getLdmPic1Description() {
		return ldmPic1Description;
	}

	public void setLdmPic1Description(String ldmPic1Description) {
		this.ldmPic1Description = ldmPic1Description;
	}

	public String getLdmPic1ContentType() {
		return ldmPic1ContentType;
	}

	public void setLdmPic1ContentType(String ldmPic1ContentType) {
		this.ldmPic1ContentType = ldmPic1ContentType;
	}

	public File getLdmPic2() {
		return ldmPic2;
	}

	public void setLdmPic2(File ldmPic2) {
		this.ldmPic2 = ldmPic2;
	}

	public String getLdmPic2Path() {
		return ldmPic2Path;
	}

	public void setLdmPic2Path(String ldmPic2Path) {
		this.ldmPic2Path = ldmPic2Path;
	}

	public String getLdmPic2FileName() {
		return ldmPic2FileName;
	}

	public void setLdmPic2FileName(String ldmPic2FileName) {
		this.ldmPic2FileName = ldmPic2FileName;
	}

	public String getLdmPic2Description() {
		return ldmPic2Description;
	}

	public void setLdmPic2Description(String ldmPic2Description) {
		this.ldmPic2Description = ldmPic2Description;
	}

	public String getLdmPic2ContentType() {
		return ldmPic2ContentType;
	}

	public void setLdmPic2ContentType(String ldmPic2ContentType) {
		this.ldmPic2ContentType = ldmPic2ContentType;
	}

	public File getLdmPic3() {
		return ldmPic3;
	}

	public void setLdmPic3(File ldmPic3) {
		this.ldmPic3 = ldmPic3;
	}

	public String getLdmPic3Path() {
		return ldmPic3Path;
	}

	public void setLdmPic3Path(String ldmPic3Path) {
		this.ldmPic3Path = ldmPic3Path;
	}

	public String getLdmPic3FileName() {
		return ldmPic3FileName;
	}

	public void setLdmPic3FileName(String ldmPic3FileName) {
		this.ldmPic3FileName = ldmPic3FileName;
	}

	public String getLdmPic3Description() {
		return ldmPic3Description;
	}

	public void setLdmPic3Description(String ldmPic3Description) {
		this.ldmPic3Description = ldmPic3Description;
	}

	public String getLdmPic3ContentType() {
		return ldmPic3ContentType;
	}

	public void setLdmPic3ContentType(String ldmPic3ContentType) {
		this.ldmPic3ContentType = ldmPic3ContentType;
	}

	public File getLdmPic4() {
		return ldmPic4;
	}

	public void setLdmPic4(File ldmPic4) {
		this.ldmPic4 = ldmPic4;
	}

	public String getLdmPic4Path() {
		return ldmPic4Path;
	}

	public void setLdmPic4Path(String ldmPic4Path) {
		this.ldmPic4Path = ldmPic4Path;
	}

	public String getLdmPic4FileName() {
		return ldmPic4FileName;
	}

	public void setLdmPic4FileName(String ldmPic4FileName) {
		this.ldmPic4FileName = ldmPic4FileName;
	}

	public String getLdmPic4Description() {
		return ldmPic4Description;
	}

	public void setLdmPic4Description(String ldmPic4Description) {
		this.ldmPic4Description = ldmPic4Description;
	}

	public String getLdmPic4ContentType() {
		return ldmPic4ContentType;
	}

	public void setLdmPic4ContentType(String ldmPic4ContentType) {
		this.ldmPic4ContentType = ldmPic4ContentType;
	}

	public File getLdmPic5() {
		return ldmPic5;
	}

	public void setLdmPic5(File ldmPic5) {
		this.ldmPic5 = ldmPic5;
	}

	public String getLdmPic5Path() {
		return ldmPic5Path;
	}

	public void setLdmPic5Path(String ldmPic5Path) {
		this.ldmPic5Path = ldmPic5Path;
	}

	public String getLdmPic5FileName() {
		return ldmPic5FileName;
	}

	public void setLdmPic5FileName(String ldmPic5FileName) {
		this.ldmPic5FileName = ldmPic5FileName;
	}

	public String getLdmPic5Description() {
		return ldmPic5Description;
	}

	public void setLdmPic5Description(String ldmPic5Description) {
		this.ldmPic5Description = ldmPic5Description;
	}

	public String getLdmPic5ContentType() {
		return ldmPic5ContentType;
	}

	public void setLdmPic5ContentType(String ldmPic5ContentType) {
		this.ldmPic5ContentType = ldmPic5ContentType;
	}

	//tbGeologyScene setters and getters
	

	public File getGeoPic1() {
		return geoPic1;
	}

	public void setGeoPic1(File geoPic1) {
		this.geoPic1 = geoPic1;
	}

	public String getGeoPic1Path() {
		return geoPic1Path;
	}

	public void setGeoPic1Path(String geoPic1Path) {
		this.geoPic1Path = geoPic1Path;
	}

	public String getGeoPic1FileName() {
		return geoPic1FileName;
	}

	public void setGeoPic1FileName(String geoPic1FileName) {
		this.geoPic1FileName = geoPic1FileName;
	}

	public String getGeoPic1Description() {
		return geoPic1Description;
	}

	public void setGeoPic1Description(String geoPic1Description) {
		this.geoPic1Description = geoPic1Description;
	}

	public String getGeoPic1ContentType() {
		return geoPic1ContentType;
	}

	public void setGeoPic1ContentType(String geoPic1ContentType) {
		this.geoPic1ContentType = geoPic1ContentType;
	}

	public File getGeoPic2() {
		return geoPic2;
	}

	public void setGeoPic2(File geoPic2) {
		this.geoPic2 = geoPic2;
	}

	public String getGeoPic2Path() {
		return geoPic2Path;
	}

	public void setGeoPic2Path(String geoPic2Path) {
		this.geoPic2Path = geoPic2Path;
	}

	public String getGeoPic2FileName() {
		return geoPic2FileName;
	}

	public void setGeoPic2FileName(String geoPic2FileName) {
		this.geoPic2FileName = geoPic2FileName;
	}

	public String getGeoPic2Description() {
		return geoPic2Description;
	}

	public void setGeoPic2Description(String geoPic2Description) {
		this.geoPic2Description = geoPic2Description;
	}

	public String getGeoPic2ContentType() {
		return geoPic2ContentType;
	}

	public void setGeoPic2ContentType(String geoPic2ContentType) {
		this.geoPic2ContentType = geoPic2ContentType;
	}

	public File getGeoPic3() {
		return geoPic3;
	}

	public void setGeoPic3(File geoPic3) {
		this.geoPic3 = geoPic3;
	}

	public String getGeoPic3Path() {
		return geoPic3Path;
	}

	public void setGeoPic3Path(String geoPic3Path) {
		this.geoPic3Path = geoPic3Path;
	}

	public String getGeoPic3FileName() {
		return geoPic3FileName;
	}

	public void setGeoPic3FileName(String geoPic3FileName) {
		this.geoPic3FileName = geoPic3FileName;
	}

	public String getGeoPic3Description() {
		return geoPic3Description;
	}

	public void setGeoPic3Description(String geoPic3Description) {
		this.geoPic3Description = geoPic3Description;
	}

	public String getGeoPic3ContentType() {
		return geoPic3ContentType;
	}

	public void setGeoPic3ContentType(String geoPic3ContentType) {
		this.geoPic3ContentType = geoPic3ContentType;
	}

	public File getGeoPic4() {
		return geoPic4;
	}

	public void setGeoPic4(File geoPic4) {
		this.geoPic4 = geoPic4;
	}

	public String getGeoPic4Path() {
		return geoPic4Path;
	}

	public void setGeoPic4Path(String geoPic4Path) {
		this.geoPic4Path = geoPic4Path;
	}

	public String getGeoPic4FileName() {
		return geoPic4FileName;
	}

	public void setGeoPic4FileName(String geoPic4FileName) {
		this.geoPic4FileName = geoPic4FileName;
	}

	public String getGeoPic4Description() {
		return geoPic4Description;
	}

	public void setGeoPic4Description(String geoPic4Description) {
		this.geoPic4Description = geoPic4Description;
	}

	public String getGeoPic4ContentType() {
		return geoPic4ContentType;
	}

	public void setGeoPic4ContentType(String geoPic4ContentType) {
		this.geoPic4ContentType = geoPic4ContentType;
	}

	public File getGeoPic5() {
		return geoPic5;
	}

	public void setGeoPic5(File geoPic5) {
		this.geoPic5 = geoPic5;
	}

	public String getGeoPic5Path() {
		return geoPic5Path;
	}

	public void setGeoPic5Path(String geoPic5Path) {
		this.geoPic5Path = geoPic5Path;
	}

	public String getGeoPic5FileName() {
		return geoPic5FileName;
	}

	public void setGeoPic5FileName(String geoPic5FileName) {
		this.geoPic5FileName = geoPic5FileName;
	}

	public String getGeoPic5Description() {
		return geoPic5Description;
	}

	public void setGeoPic5Description(String geoPic5Description) {
		this.geoPic5Description = geoPic5Description;
	}

	public String getGeoPic5ContentType() {
		return geoPic5ContentType;
	}

	public void setGeoPic5ContentType(String geoPic5ContentType) {
		this.geoPic5ContentType = geoPic5ContentType;
	}
	
	//tbCultureScene setters and getters
    

	public File getCulPic1() {
		return culPic1;
	}

	public Set<TbLakelevel> getTbLakelevels() {
		return tbLakelevels;
	}

	public void setTbLakelevels(Set<TbLakelevel> tbLakelevels) {
		this.tbLakelevels = tbLakelevels;
	}

	public Set<TbCulturescene> getTbCulturescenes() {
		return tbCulturescenes;
	}

	public void setTbCulturescenes(Set<TbCulturescene> tbCulturescenes) {
		this.tbCulturescenes = tbCulturescenes;
	}

	public Set<TbLandmarkscene> getTbLandmarkscenes() {
		return tbLandmarkscenes;
	}

	public void setTbLandmarkscenes(Set<TbLandmarkscene> tbLandmarkscenes) {
		this.tbLandmarkscenes = tbLandmarkscenes;
	}

	public TbGeneralpic getTbGeneralpic() {
		return tbGeneralpic;
	}

	public void setTbGeneralpic(TbGeneralpic tbGeneralpic) {
		this.tbGeneralpic = tbGeneralpic;
	}

	public TbCultureinfo getTbCultureinfo() {
		return tbCultureinfo;
	}

	public void setTbCultureinfo(TbCultureinfo tbCultureinfo) {
		this.tbCultureinfo = tbCultureinfo;
	}

	public TbEnvironmentinfo getTbEnvironmentinfo() {
		return tbEnvironmentinfo;
	}

	public void setTbEnvironmentinfo(TbEnvironmentinfo tbEnvironmentinfo) {
		this.tbEnvironmentinfo = tbEnvironmentinfo;
	}

	public TbGeologyinfo getTbGeologyinfo() {
		return tbGeologyinfo;
	}

	public void setTbGeologyinfo(TbGeologyinfo tbGeologyinfo) {
		this.tbGeologyinfo = tbGeologyinfo;
	}

	public Set<TbGeologyscene> getTbGeologyscenes() {
		return tbGeologyscenes;
	}

	public void setTbGeologyscenes(Set<TbGeologyscene> tbGeologyscenes) {
		this.tbGeologyscenes = tbGeologyscenes;
	}

	public TbInvestigatorinfo getTbInvestigatorinfo() {
		return tbInvestigatorinfo;
	}

	public void setTbInvestigatorinfo(TbInvestigatorinfo tbInvestigatorinfo) {
		this.tbInvestigatorinfo = tbInvestigatorinfo;
	}

	public Set<TbProvincelevel> getTbProvincelevels() {
		return tbProvincelevels;
	}

	public void setTbProvincelevels(Set<TbProvincelevel> tbProvincelevels) {
		this.tbProvincelevels = tbProvincelevels;
	}

	public TbAuditinfo getTbAuditinfo() {
		return tbAuditinfo;
	}

	public void setTbAuditinfo(TbAuditinfo tbAuditinfo) {
		this.tbAuditinfo = tbAuditinfo;
	}

	public Set<TbCountrylevel> getTbCountrylevels() {
		return tbCountrylevels;
	}

	public void setTbCountrylevels(Set<TbCountrylevel> tbCountrylevels) {
		this.tbCountrylevels = tbCountrylevels;
	}

	public Set<TbWorldlevel> getTbWorldlevels() {
		return tbWorldlevels;
	}

	public void setTbWorldlevels(Set<TbWorldlevel> tbWorldlevels) {
		this.tbWorldlevels = tbWorldlevels;
	}

	public void setCulPic1(File culPic1) {
		this.culPic1 = culPic1;
	}

	public String getCulPic1Path() {
		return culPic1Path;
	}

	public void setCulPic1Path(String culPic1Path) {
		this.culPic1Path = culPic1Path;
	}

	public String getCulPic1FileName() {
		return culPic1FileName;
	}

	public void setCulPic1FileName(String culPic1FileName) {
		this.culPic1FileName = culPic1FileName;
	}

	public String getCulPic1Description() {
		return culPic1Description;
	}

	public void setCulPic1Description(String culPic1Description) {
		this.culPic1Description = culPic1Description;
	}

	public String getCulPic1ContentType() {
		return culPic1ContentType;
	}

	public void setCulPic1ContentType(String culPic1ContentType) {
		this.culPic1ContentType = culPic1ContentType;
	}

	public File getCulPic2() {
		return culPic2;
	}

	public void setCulPic2(File culPic2) {
		this.culPic2 = culPic2;
	}

	public String getCulPic2Path() {
		return culPic2Path;
	}

	public void setCulPic2Path(String culPic2Path) {
		this.culPic2Path = culPic2Path;
	}

	public String getCulPic2FileName() {
		return culPic2FileName;
	}

	public void setCulPic2FileName(String culPic2FileName) {
		this.culPic2FileName = culPic2FileName;
	}

	public String getCulPic2Description() {
		return culPic2Description;
	}

	public void setCulPic2Description(String culPic2Description) {
		this.culPic2Description = culPic2Description;
	}

	public String getCulPic2ContentType() {
		return culPic2ContentType;
	}

	public void setCulPic2ContentType(String culPic2ContentType) {
		this.culPic2ContentType = culPic2ContentType;
	}

	public File getCulPic3() {
		return culPic3;
	}

	public void setCulPic3(File culPic3) {
		this.culPic3 = culPic3;
	}

	public String getCulPic3Path() {
		return culPic3Path;
	}

	public void setCulPic3Path(String culPic3Path) {
		this.culPic3Path = culPic3Path;
	}

	public String getCulPic3FileName() {
		return culPic3FileName;
	}

	public void setCulPic3FileName(String culPic3FileName) {
		this.culPic3FileName = culPic3FileName;
	}

	public String getCulPic3Description() {
		return culPic3Description;
	}

	public void setCulPic3Description(String culPic3Description) {
		this.culPic3Description = culPic3Description;
	}

	public String getCulPic3ContentType() {
		return culPic3ContentType;
	}

	public void setCulPic3ContentType(String culPic3ContentType) {
		this.culPic3ContentType = culPic3ContentType;
	}

	public File getCulPic4() {
		return culPic4;
	}

	public void setCulPic4(File culPic4) {
		this.culPic4 = culPic4;
	}

	public String getCulPic4Path() {
		return culPic4Path;
	}

	public void setCulPic4Path(String culPic4Path) {
		this.culPic4Path = culPic4Path;
	}

	public String getCulPic4FileName() {
		return culPic4FileName;
	}

	public void setCulPic4FileName(String culPic4FileName) {
		this.culPic4FileName = culPic4FileName;
	}

	public String getCulPic4Description() {
		return culPic4Description;
	}

	public void setCulPic4Description(String culPic4Description) {
		this.culPic4Description = culPic4Description;
	}

	public String getCulPic4ContentType() {
		return culPic4ContentType;
	}

	public void setCulPic4ContentType(String culPic4ContentType) {
		this.culPic4ContentType = culPic4ContentType;
	}

	public File getCulPic5() {
		return culPic5;
	}

	public void setCulPic5(File culPic5) {
		this.culPic5 = culPic5;
	}

	public String getCulPic5Path() {
		return culPic5Path;
	}

	public void setCulPic5Path(String culPic5Path) {
		this.culPic5Path = culPic5Path;
	}

	public String getCulPic5FileName() {
		return culPic5FileName;
	}

	public void setCulPic5FileName(String culPic5FileName) {
		this.culPic5FileName = culPic5FileName;
	}

	public String getCulPic5Description() {
		return culPic5Description;
	}

	public void setCulPic5Description(String culPic5Description) {
		this.culPic5Description = culPic5Description;
	}

	public String getCulPic5ContentType() {
		return culPic5ContentType;
	}

	public void setCulPic5ContentType(String culPic5ContentType) {
		this.culPic5ContentType = culPic5ContentType;
	}
	 //tbGeneralpicinfo setters and getters
	public Integer getPicNum() {
		return picNum;
	}


	public void setPicNum(Integer picNum) {
		this.picNum = picNum;
	}


	public File getMylakeLevelPic() {
		return mylakeLevelPic;
	}


	public void setMylakeLevelPic(File mylakeLevelPic) {
		this.mylakeLevelPic = mylakeLevelPic;
	}


	public String getMylakeLevelPicPath() {
		return mylakeLevelPicPath;
	}


	public void setMylakeLevelPicPath(String mylakeLevelPicPath) {
		this.mylakeLevelPicPath = mylakeLevelPicPath;
	}


	public String getMylakeLevelPicContentType() {
		return mylakeLevelPicContentType;
	}


	public void setMylakeLevelPicContentType(String mylakeLevelPicContentType) {
		this.mylakeLevelPicContentType = mylakeLevelPicContentType;
	}


	public String getMylakeLevelPicFileName() {
		return mylakeLevelPicFileName;
	}


	public void setMylakeLevelPicFileName(String mylakeLevelPicFileName) {
		this.mylakeLevelPicFileName = mylakeLevelPicFileName;
	}


	public String getMylakeLevelPicDescription() {
		return mylakeLevelPicDescription;
	}


	public void setMylakeLevelPicDescription(String mylakeLevelPicDescription) {
		this.mylakeLevelPicDescription = mylakeLevelPicDescription;
	}


	public File getMyconglomeratePic() {
		return myconglomeratePic;
	}


	public void setMyconglomeratePic(File myconglomeratePic) {
		this.myconglomeratePic = myconglomeratePic;
	}


	public String getMyconglomeratePicPath() {
		return myconglomeratePicPath;
	}


	public void setMyconglomeratePicPath(String myconglomeratePicPath) {
		this.myconglomeratePicPath = myconglomeratePicPath;
	}


	public String getMyconglomeratePicContentType() {
		return myconglomeratePicContentType;
	}


	public void setMyconglomeratePicContentType(String myconglomeratePicContentType) {
		this.myconglomeratePicContentType = myconglomeratePicContentType;
	}


	public String getMyconglomeratePicFileName() {
		return myconglomeratePicFileName;
	}


	public void setMyconglomeratePicFileName(String myconglomeratePicFileName) {
		this.myconglomeratePicFileName = myconglomeratePicFileName;
	}


	public String getMyconglomeratePicDescription() {
		return myconglomeratePicDescription;
	}


	public void setMyconglomeratePicDescription(String myconglomeratePicDescription) {
		this.myconglomeratePicDescription = myconglomeratePicDescription;
	}


	public File getMysandstonePic() {
		return mysandstonePic;
	}


	public void setMysandstonePic(File mysandstonePic) {
		this.mysandstonePic = mysandstonePic;
	}


	public String getMysandstonePicPath() {
		return mysandstonePicPath;
	}


	public void setMysandstonePicPath(String mysandstonePicPath) {
		this.mysandstonePicPath = mysandstonePicPath;
	}


	public String getMysandstonePicContentType() {
		return mysandstonePicContentType;
	}


	public void setMysandstonePicContentType(String mysandstonePicContentType) {
		this.mysandstonePicContentType = mysandstonePicContentType;
	}


	public String getMysandstonePicFileName() {
		return mysandstonePicFileName;
	}


	public void setMysandstonePicFileName(String mysandstonePicFileName) {
		this.mysandstonePicFileName = mysandstonePicFileName;
	}


	public String getMysandstonePicDescription() {
		return mysandstonePicDescription;
	}


	public void setMysandstonePicDescription(String mysandstonePicDescription) {
		this.mysandstonePicDescription = mysandstonePicDescription;
	}


	public File getMysiltstonePic() {
		return mysiltstonePic;
	}


	public void setMysiltstonePic(File mysiltstonePic) {
		this.mysiltstonePic = mysiltstonePic;
	}


	public String getMysiltstonePicPath() {
		return mysiltstonePicPath;
	}


	public void setMysiltstonePicPath(String mysiltstonePicPath) {
		this.mysiltstonePicPath = mysiltstonePicPath;
	}


	public String getMysiltstonePicContentType() {
		return mysiltstonePicContentType;
	}


	public void setMysiltstonePicContentType(String mysiltstonePicContentType) {
		this.mysiltstonePicContentType = mysiltstonePicContentType;
	}


	public String getMysiltstonePicFileName() {
		return mysiltstonePicFileName;
	}


	public void setMysiltstonePicFileName(String mysiltstonePicFileName) {
		this.mysiltstonePicFileName = mysiltstonePicFileName;
	}


	public String getMysiltsstonePicDescription() {
		return mysiltsstonePicDescription;
	}


	public void setMysiltsstonePicDescription(String mysiltsstonePicDescription) {
		this.mysiltsstonePicDescription = mysiltsstonePicDescription;
	}


	public File getMyclayPic() {
		return myclayPic;
	}


	public void setMyclayPic(File myclayPic) {
		this.myclayPic = myclayPic;
	}


	public String getMyclayPicPath() {
		return myclayPicPath;
	}


	public void setMyclayPicPath(String myclayPicPath) {
		this.myclayPicPath = myclayPicPath;
	}


	public String getMyclayPicContentType() {
		return myclayPicContentType;
	}


	public void setMyclayPicContentType(String myclayPicContentType) {
		this.myclayPicContentType = myclayPicContentType;
	}


	public String getMyclayPicFileName() {
		return myclayPicFileName;
	}


	public void setMyclayPicFileName(String myclayPicFileName) {
		this.myclayPicFileName = myclayPicFileName;
	}


	public String getMyclayPicDescription() {
		return myclayPicDescription;
	}


	public void setMyclayPicDescription(String myclayPicDescription) {
		this.myclayPicDescription = myclayPicDescription;
	}


	public File getMybasinLinePic() {
		return mybasinLinePic;
	}


	public void setMybasinLinePic(File mybasinLinePic) {
		this.mybasinLinePic = mybasinLinePic;
	}


	public String getMybasinLinePicPath() {
		return mybasinLinePicPath;
	}


	public void setMybasinLinePicPath(String mybasinLinePicPath) {
		this.mybasinLinePicPath = mybasinLinePicPath;
	}


	public String getMybasinLinePicContentType() {
		return mybasinLinePicContentType;
	}


	public void setMybasinLinePicContentType(String mybasinLinePicContentType) {
		this.mybasinLinePicContentType = mybasinLinePicContentType;
	}


	public String getMybasinLinePicFileName() {
		return mybasinLinePicFileName;
	}


	public void setMybasinLinePicFileName(String mybasinLinePicFileName) {
		this.mybasinLinePicFileName = mybasinLinePicFileName;
	}


	public String getMybasinLinePicDescription() {
		return mybasinLinePicDescription;
	}


	public void setMybasinLinePicDescription(String mybasinLinePicDescription) {
		this.mybasinLinePicDescription = mybasinLinePicDescription;
	}


	public File getMybasinPositionPic() {
		return mybasinPositionPic;
	}


	public void setMybasinPositionPic(File mybasinPositionPic) {
		this.mybasinPositionPic = mybasinPositionPic;
	}


	public String getMybasinPositionPicPath() {
		return mybasinPositionPicPath;
	}


	public void setMybasinPositionPicPath(String mybasinPositionPicPath) {
		this.mybasinPositionPicPath = mybasinPositionPicPath;
	}


	public String getMybasinPositionPicContentType() {
		return mybasinPositionPicContentType;
	}


	public void setMybasinPositionPicContentType(
			String mybasinPositionPicContentType) {
		this.mybasinPositionPicContentType = mybasinPositionPicContentType;
	}


	public String getMybasinPositionPicFileName() {
		return mybasinPositionPicFileName;
	}


	public void setMybasinPositionPicFileName(String mybasinPositionPicFileName) {
		this.mybasinPositionPicFileName = mybasinPositionPicFileName;
	}


	public String getMybasinPositionPicDescription() {
		return mybasinPositionPicDescription;
	}


	public void setMybasinPositionPicDescription(
			String mybasinPositionPicDescription) {
		this.mybasinPositionPicDescription = mybasinPositionPicDescription;
	}


	public File getMybasinGeologyPic() {
		return mybasinGeologyPic;
	}


	public void setMybasinGeologyPic(File mybasinGeologyPic) {
		this.mybasinGeologyPic = mybasinGeologyPic;
	}


	public String getMybasinGeologyPicPath() {
		return mybasinGeologyPicPath;
	}


	public void setMybasinGeologyPicPath(String mybasinGeologyPicPath) {
		this.mybasinGeologyPicPath = mybasinGeologyPicPath;
	}


	public String getMybasinGeologyPicContentType() {
		return mybasinGeologyPicContentType;
	}


	public void setMybasinGeologyPicContentType(String mybasinGeologyPicContentType) {
		this.mybasinGeologyPicContentType = mybasinGeologyPicContentType;
	}


	public String getMybasinGeologyPicFileName() {
		return mybasinGeologyPicFileName;
	}


	public void setMybasinGeologyPicFileName(String mybasinGeologyPicFileName) {
		this.mybasinGeologyPicFileName = mybasinGeologyPicFileName;
	}


	public String getMybasinGeologyPicDescription() {
		return mybasinGeologyPicDescription;
	}


	public void setMybasinGeologyPicDescription(String mybasinGeologyPicDescription) {
		this.mybasinGeologyPicDescription = mybasinGeologyPicDescription;
	}


	public File getMyterrainPic() {
		return myterrainPic;
	}


	public void setMyterrainPic(File myterrainPic) {
		this.myterrainPic = myterrainPic;
	}


	public String getMyterrainPicPath() {
		return myterrainPicPath;
	}


	public void setMyterrainPicPath(String myterrainPicPath) {
		this.myterrainPicPath = myterrainPicPath;
	}


	public String getMyterrainPicContentType() {
		return myterrainPicContentType;
	}


	public void setMyterrainPicContentType(String myterrainPicContentType) {
		this.myterrainPicContentType = myterrainPicContentType;
	}


	public String getMyterrainPicFileName() {
		return myterrainPicFileName;
	}


	public void setMyterrainPicFileName(String myterrainPicFileName) {
		this.myterrainPicFileName = myterrainPicFileName;
	}


	public String getMyterrainPicDescription() {
		return myterrainPicDescription;
	}


	public void setMyterrainPicDescription(String myterrainPicDescription) {
		this.myterrainPicDescription = myterrainPicDescription;
	}


	public File getMychanzhuangPic1() {
		return mychanzhuangPic1;
	}


	public void setMychanzhuangPic1(File mychanzhuangPic1) {
		this.mychanzhuangPic1 = mychanzhuangPic1;
	}


	public String getMychanzhuangPic1Path() {
		return mychanzhuangPic1Path;
	}


	public void setMychanzhuangPic1Path(String mychanzhuangPic1Path) {
		this.mychanzhuangPic1Path = mychanzhuangPic1Path;
	}


	public String getMychanzhuangPic1ContentType() {
		return mychanzhuangPic1ContentType;
	}


	public void setMychanzhuangPic1ContentType(String mychanzhuangPic1ContentType) {
		this.mychanzhuangPic1ContentType = mychanzhuangPic1ContentType;
	}


	public String getMychanzhuangPic1FileName() {
		return mychanzhuangPic1FileName;
	}


	public void setMychanzhuangPic1FileName(String mychanzhuangPic1FileName) {
		this.mychanzhuangPic1FileName = mychanzhuangPic1FileName;
	}


	public String getMychanzhuangPic1Description() {
		return mychanzhuangPic1Description;
	}


	public void setMychanzhuangPic1Description(String mychanzhuangPic1Description) {
		this.mychanzhuangPic1Description = mychanzhuangPic1Description;
	}


	public File getMychanzhuangPic2() {
		return mychanzhuangPic2;
	}


	public void setMychanzhuangPic2(File mychanzhuangPic2) {
		this.mychanzhuangPic2 = mychanzhuangPic2;
	}


	public String getMychanzhuangPic2Path() {
		return mychanzhuangPic2Path;
	}


	public void setMychanzhuangPic2Path(String mychanzhuangPic2Path) {
		this.mychanzhuangPic2Path = mychanzhuangPic2Path;
	}


	public String getMychanzhuangPic2ContentType() {
		return mychanzhuangPic2ContentType;
	}


	public void setMychanzhuangPic2ContentType(String mychanzhuangPic2ContentType) {
		this.mychanzhuangPic2ContentType = mychanzhuangPic2ContentType;
	}


	public String getMychanzhuangPic2FileName() {
		return mychanzhuangPic2FileName;
	}


	public void setMychanzhuangPic2FileName(String mychanzhuangPic2FileName) {
		this.mychanzhuangPic2FileName = mychanzhuangPic2FileName;
	}


	public String getMychanzhuangPic2Description() {
		return mychanzhuangPic2Description;
	}


	public void setMychanzhuangPic2Description(String mychanzhuangPic2Description) {
		this.mychanzhuangPic2Description = mychanzhuangPic2Description;
	}


	public File getMypositiveReliefPic() {
		return mypositiveReliefPic;
	}


	public void setMypositiveReliefPic(File mypositiveReliefPic) {
		this.mypositiveReliefPic = mypositiveReliefPic;
	}


	public String getMypositiveReliefPicPath() {
		return mypositiveReliefPicPath;
	}


	public void setMypositiveReliefPicPath(String mypositiveReliefPicPath) {
		this.mypositiveReliefPicPath = mypositiveReliefPicPath;
	}


	public String getMypositiveReliefPicContentType() {
		return mypositiveReliefPicContentType;
	}


	public void setMypositiveReliefPicContentType(
			String mypositiveReliefPicContentType) {
		this.mypositiveReliefPicContentType = mypositiveReliefPicContentType;
	}


	public String getMypositiveReliefPicFileName() {
		return mypositiveReliefPicFileName;
	}


	public void setMypositiveReliefPicFileName(String mypositiveReliefPicFileName) {
		this.mypositiveReliefPicFileName = mypositiveReliefPicFileName;
	}


	public String getMypositiveReliefPicDecsription() {
		return mypositiveReliefPicDecsription;
	}


	public void setMypositiveReliefPicDecsription(
			String mypositiveReliefPicDecsription) {
		this.mypositiveReliefPicDecsription = mypositiveReliefPicDecsription;
	}


	public File getMynegativeReliefPic() {
		return mynegativeReliefPic;
	}


	public void setMynegativeReliefPic(File mynegativeReliefPic) {
		this.mynegativeReliefPic = mynegativeReliefPic;
	}


	public String getMynegativeReliefPicPath() {
		return mynegativeReliefPicPath;
	}


	public void setMynegativeReliefPicPath(String mynegativeReliefPicPath) {
		this.mynegativeReliefPicPath = mynegativeReliefPicPath;
	}


	public String getMynegativeReliefPicContentType() {
		return mynegativeReliefPicContentType;
	}


	public void setMynegativeReliefPicContentType(
			String mynegativeReliefPicContentType) {
		this.mynegativeReliefPicContentType = mynegativeReliefPicContentType;
	}


	public String getMynegativeReliefPicFileName() {
		return mynegativeReliefPicFileName;
	}


	public void setMynegativeReliefPicFileName(String mynegativeReliefPicFileName) {
		this.mynegativeReliefPicFileName = mynegativeReliefPicFileName;
	}


	public String getMynegativeReliefPicDecsription() {
		return mynegativeReliefPicDecsription;
	}


	public void setMynegativeReliefPicDecsription(
			String mynegativeReliefPicDecsription) {
		this.mynegativeReliefPicDecsription = mynegativeReliefPicDecsription;
	}


	public File getMyreliefPic() {
		return myreliefPic;
	}


	public void setMyreliefPic(File myreliefPic) {
		this.myreliefPic = myreliefPic;
	}


	public String getMyreliefPicPath() {
		return myreliefPicPath;
	}


	public void setMyreliefPicPath(String myreliefPicPath) {
		this.myreliefPicPath = myreliefPicPath;
	}


	public String getMyreliefPicContentType() {
		return myreliefPicContentType;
	}


	public void setMyreliefPicContentType(String myreliefPicContentType) {
		this.myreliefPicContentType = myreliefPicContentType;
	}


	public String getMyreliefPicFileName() {
		return myreliefPicFileName;
	}


	public void setMyreliefPicFileName(String myreliefPicFileName) {
		this.myreliefPicFileName = myreliefPicFileName;
	}


	public String getMyreliefPicDescription() {
		return myreliefPicDescription;
	}


	public void setMyreliefPicDescription(String myreliefPicDescription) {
		this.myreliefPicDescription = myreliefPicDescription;
	}


	public File getMydependentShapePic() {
		return mydependentShapePic;
	}


	public void setMydependentShapePic(File mydependentShapePic) {
		this.mydependentShapePic = mydependentShapePic;
	}


	public String getMydependentShapePicPath() {
		return mydependentShapePicPath;
	}


	public void setMydependentShapePicPath(String mydependentShapePicPath) {
		this.mydependentShapePicPath = mydependentShapePicPath;
	}


	public String getMydependentShapePicContentType() {
		return mydependentShapePicContentType;
	}


	public void setMydependentShapePicContentType(
			String mydependentShapePicContentType) {
		this.mydependentShapePicContentType = mydependentShapePicContentType;
	}


	public String getMydependentShapePicFileName() {
		return mydependentShapePicFileName;
	}


	public void setMydependentShapePicFileName(String mydependentShapePicFileName) {
		this.mydependentShapePicFileName = mydependentShapePicFileName;
	}


	public String getMydependentShapePicDescription() {
		return mydependentShapePicDescription;
	}


	public void setMydependentShapePicDescription(
			String mydependentShapePicDescription) {
		this.mydependentShapePicDescription = mydependentShapePicDescription;
	}


	public File getMyslopeShapePic() {
		return myslopeShapePic;
	}


	public void setMyslopeShapePic(File myslopeShapePic) {
		this.myslopeShapePic = myslopeShapePic;
	}


	public String getMyslopeShapePicPath() {
		return myslopeShapePicPath;
	}


	public void setMyslopeShapePicPath(String myslopeShapePicPath) {
		this.myslopeShapePicPath = myslopeShapePicPath;
	}


	public String getMyslopeShapePicContentType() {
		return myslopeShapePicContentType;
	}


	public void setMyslopeShapePicContentType(String myslopeShapePicContentType) {
		this.myslopeShapePicContentType = myslopeShapePicContentType;
	}


	public String getMyslopeShapePicFileName() {
		return myslopeShapePicFileName;
	}


	public void setMyslopeShapePicFileName(String myslopeShapePicFileName) {
		this.myslopeShapePicFileName = myslopeShapePicFileName;
	}


	public String getMyslopeShapePicDescription() {
		return myslopeShapePicDescription;
	}


	public void setMyslopeShapePicDescription(String myslopeShapePicDescription) {
		this.myslopeShapePicDescription = myslopeShapePicDescription;
	}


	public File getMyoverallScenePic() {
		return myoverallScenePic;
	}


	public void setMyoverallScenePic(File myoverallScenePic) {
		this.myoverallScenePic = myoverallScenePic;
	}


	public String getMyoverallScenePicPath() {
		return myoverallScenePicPath;
	}


	public void setMyoverallScenePicPath(String myoverallScenePicPath) {
		this.myoverallScenePicPath = myoverallScenePicPath;
	}


	public String getMyoverallScenePicContentType() {
		return myoverallScenePicContentType;
	}


	public void setMyoverallScenePicContentType(String myoverallScenePicContentType) {
		this.myoverallScenePicContentType = myoverallScenePicContentType;
	}


	public String getMyoverallScenePicFileName() {
		return myoverallScenePicFileName;
	}


	public void setMyoverallScenePicFileName(String myoverallScenePicFileName) {
		this.myoverallScenePicFileName = myoverallScenePicFileName;
	}


	public String getMyoverallScenePicDescription() {
		return myoverallScenePicDescription;
	}


	public void setMyoverallScenePicDescription(String myoverallScenePicDescription) {
		this.myoverallScenePicDescription = myoverallScenePicDescription;
	}


	public File getMyoverallEnvironmentPic() {
		return myoverallEnvironmentPic;
	}


	public void setMyoverallEnvironmentPic(File myoverallEnvironmentPic) {
		this.myoverallEnvironmentPic = myoverallEnvironmentPic;
	}


	public String getMyoverallEnvironmentPicPath() {
		return myoverallEnvironmentPicPath;
	}


	public void setMyoverallEnvironmentPicPath(String myoverallEnvironmentPicPath) {
		this.myoverallEnvironmentPicPath = myoverallEnvironmentPicPath;
	}


	public String getMyoverallEnvironmentPicContentType() {
		return myoverallEnvironmentPicContentType;
	}


	public void setMyoverallEnvironmentPicContentType(
			String myoverallEnvironmentPicContentType) {
		this.myoverallEnvironmentPicContentType = myoverallEnvironmentPicContentType;
	}


	public String getMyoverallEnvironmentPicFileName() {
		return myoverallEnvironmentPicFileName;
	}


	public void setMyoverallEnvironmentPicFileName(
			String myoverallEnvironmentPicFileName) {
		this.myoverallEnvironmentPicFileName = myoverallEnvironmentPicFileName;
	}


	public String getMyoverallEnvironmentPicDescription() {
		return myoverallEnvironmentPicDescription;
	}


	public void setMyoverallEnvironmentPicDescription(
			String myoverallEnvironmentPicDescription) {
		this.myoverallEnvironmentPicDescription = myoverallEnvironmentPicDescription;
	}


	//tbAuditinfo setters and getters
    public String getSuggestions() {
		return suggestions;
	}

	public void setSuggestions(String suggestions) {
		this.suggestions = suggestions;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	public String getResponsibility() {
		return responsibility;
	}

	public void setResponsibility(String responsibility) {
		this.responsibility = responsibility;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
    //tbInvestigatorinfo setters and getters
    
    public String getInvestigatorName() {
		return investigatorName;
	}


	public void setInvestigatorName(String investigatorName) {
		this.investigatorName = investigatorName;
	}



	public String getInvestigatorSex() {
		return investigatorSex;
	}



	public void setInvestigatorSex(String investigatorSex) {
		this.investigatorSex = investigatorSex;
	}



	public String getInvestigatorAge() {
		return investigatorAge;
	}



	public void setInvestigatorAge(String investigatorAge) {
		this.investigatorAge = investigatorAge;
	}



	public String getInvestigatorCompany() {
		return investigatorCompany;
	}



	public void setInvestigatorCompany(String investigatorCompany) {
		this.investigatorCompany = investigatorCompany;
	}



	public String getInvestigatorPosition() {
		return investigatorPosition;
	}



	public void setInvestigatorPosition(String investigatorPosition) {
		this.investigatorPosition = investigatorPosition;
	}



	public String getInvestigatorMailAddr() {
		return investigatorMailAddr;
	}



	public void setInvestigatorMailAddr(String investigatorMailAddr) {
		this.investigatorMailAddr = investigatorMailAddr;
	}



	public String getInvestigatorPostcode() {
		return investigatorPostcode;
	}



	public void setInvestigatorPostcode(String investigatorPostcode) {
		this.investigatorPostcode = investigatorPostcode;
	}



	public String getInvestigatorPhone() {
		return investigatorPhone;
	}



	public void setInvestigatorPhone(String investigatorPhone) {
		this.investigatorPhone = investigatorPhone;
	}



	public String getInvestigatorFax() {
		return investigatorFax;
	}



	public void setInvestigatorFax(String investigatorFax) {
		this.investigatorFax = investigatorFax;
	}



	public String getInvestigatorEmail() {
		return investigatorEmail;
	}



	public void setInvestigatorEmail(String investigatorEmail) {
		this.investigatorEmail = investigatorEmail;
	}



	public String getInvestigatorSubmitTime() {
		return investigatorSubmitTime;
	}



	public void setInvestigatorSubmitTime(String investigatorSubmitTime) {
		this.investigatorSubmitTime = investigatorSubmitTime;
	}

    
    //TbCultureinfo setters and getters
    public String getNation() {
		return nation;
	}


	public void setNation(String nation) {
		this.nation = nation;
	}


	public String getReligion() {
		return religion;
	}


	public void setReligion(String religion) {
		this.religion = religion;
	}


	public String getArchitecture() {
		return architecture;
	}


	public void setArchitecture(String architecture) {
		this.architecture = architecture;
	}


	public String getAntiquity() {
		return antiquity;
	}


	public void setAntiquity(String antiquity) {
		this.antiquity = antiquity;
	}


	public String getCustom() {
		return custom;
	}


	public void setCustom(String custom) {
		this.custom = custom;
	}


	public String getCultureDescription() {
		return cultureDescription;
	}


	public void setCultureDescription(String cultureDescription) {
		this.cultureDescription = cultureDescription;
	}


	public String getUseType() {
		return useType;
	}


	public void setUseType(String useType) {
		this.useType = useType;
	}


	public String getUseDegree() {
		return useDegree;
	}


	public void setUseDegree(String useDegree) {
		this.useDegree = useDegree;
	}


	public String getTransport() {
		return transport;
	}


	public void setTransport(String transport) {
		this.transport = transport;
	}


	public String getProtectCondition() {
		return protectCondition;
	}


	public void setProtectCondition(String protectCondition) {
		this.protectCondition = protectCondition;
	}


	public String getUseDescription() {
		return useDescription;
	}


	public void setUseDescription(String useDescription) {
		this.useDescription = useDescription;
	}


	public String getCultureOtherInfo() {
		return cultureOtherInfo;
	}


	public void setCultureOtherInfo(String cultureOtherInfo) {
		this.cultureOtherInfo = cultureOtherInfo;
	}


    
    //TbEnvironmentinfo setters and getters
    public String getClimateType() {
		return climateType;
	}

	public void setClimateType(String climateType) {
		this.climateType = climateType;
	}


	public String getJauTemperature() {
		return jauTemperature;
	}


	public void setJauTemperature(String jauTemperature) {
		this.jauTemperature = jauTemperature;
	}


	public String getJulTemperature() {
		return julTemperature;
	}


	public void setJulTemperature(String julTemperature) {
		this.julTemperature = julTemperature;
	}


	public String getYearTemperature() {
		return yearTemperature;
	}


	public void setYearTemperature(String yearTemperature) {
		this.yearTemperature = yearTemperature;
	}


	public String getYearPrecipitation() {
		return yearPrecipitation;
	}


	public void setYearPrecipitation(String yearPrecipitation) {
		this.yearPrecipitation = yearPrecipitation;
	}


	public String getWaterArea1() {
		return waterArea1;
	}


	public void setWaterArea1(String waterArea1) {
		this.waterArea1 = waterArea1;
	}


	public String getFlowQuantity1() {
		return flowQuantity1;
	}


	public void setFlowQuantity1(String flowQuantity1) {
		this.flowQuantity1 = flowQuantity1;
	}


	public String getFlowDirection1() {
		return flowDirection1;
	}


	public void setFlowDirection1(String flowDirection1) {
		this.flowDirection1 = flowDirection1;
	}


	public String getWaterTime1() {
		return waterTime1;
	}


	public void setWaterTime1(String waterTime1) {
		this.waterTime1 = waterTime1;
	}


	public String getWaterDescription1() {
		return waterDescription1;
	}


	public void setWaterDescription1(String waterDescription1) {
		this.waterDescription1 = waterDescription1;
	}


	public String getWaterArea2() {
		return waterArea2;
	}


	public void setWaterArea2(String waterArea2) {
		this.waterArea2 = waterArea2;
	}


	public String getFlowQuantity2() {
		return flowQuantity2;
	}


	public void setFlowQuantity2(String flowQuantity2) {
		this.flowQuantity2 = flowQuantity2;
	}


	public String getFlowDirection2() {
		return flowDirection2;
	}


	public void setFlowDirection2(String flowDirection2) {
		this.flowDirection2 = flowDirection2;
	}


	public String getWaterTime2() {
		return waterTime2;
	}


	public void setWaterTime2(String waterTime2) {
		this.waterTime2 = waterTime2;
	}


	public String getWaterDescription2() {
		return waterDescription2;
	}


	public void setWaterDescription2(String waterDescription2) {
		this.waterDescription2 = waterDescription2;
	}


	public String getPlantType() {
		return plantType;
	}


	public void setPlantType(String plantType) {
		this.plantType = plantType;
	}


	public String getPlantQuantity() {
		return plantQuantity;
	}


	public void setPlantQuantity(String plantQuantity) {
		this.plantQuantity = plantQuantity;
	}


	public String getSpecialPlant() {
		return specialPlant;
	}


	public void setSpecialPlant(String specialPlant) {
		this.specialPlant = specialPlant;
	}


	public String getAnimalQuantity() {
		return animalQuantity;
	}


	public void setAnimalQuantity(String animalQuantity) {
		this.animalQuantity = animalQuantity;
	}


	public String getSpecialAnimal() {
		return specialAnimal;
	}


	public void setSpecialAnimal(String specialAnimal) {
		this.specialAnimal = specialAnimal;
	}


	public String getOverallEnvironment() {
		return overallEnvironment;
	}


	public void setOverallEnvironment(String overallEnvironment) {
		this.overallEnvironment = overallEnvironment;
	}


	public String getForestCoverage() {
		return forestCoverage;
	}


	public void setForestCoverage(String forestCoverage) {
		this.forestCoverage = forestCoverage;
	}


	public String getDesertSign() {
		return desertSign;
	}


	public void setDesertSign(String desertSign) {
		this.desertSign = desertSign;
	}


	public String getEcologySign() {
		return ecologySign;
	}


	public void setEcologySign(String ecologySign) {
		this.ecologySign = ecologySign;
	}


	public String getDisasterQuantity() {
		return disasterQuantity;
	}


	public void setDisasterQuantity(String disasterQuantity) {
		this.disasterQuantity = disasterQuantity;
	}


	public String getRecentDisaster() {
		return recentDisaster;
	}


	public void setRecentDisaster(String recentDisaster) {
		this.recentDisaster = recentDisaster;
	}


	public String getLandsllideQuantity() {
		return landsllideQuantity;
	}


	public void setLandsllideQuantity(String landsllideQuantity) {
		this.landsllideQuantity = landsllideQuantity;
	}


	public String getRecentLandslide() {
		return recentLandslide;
	}


	public void setRecentLandslide(String recentLandslide) {
		this.recentLandslide = recentLandslide;
	}


	public String getMudslideQuantity() {
		return mudslideQuantity;
	}


	public void setMudslideQuantity(String mudslideQuantity) {
		this.mudslideQuantity = mudslideQuantity;
	}


	public String getRecentMudslide() {
		return recentMudslide;
	}


	public void setRecentMudslide(String recentMudslide) {
		this.recentMudslide = recentMudslide;
	}


	public String getGeologyDescription() {
		return geologyDescription;
	}


	public void setGeologyDescription(String geologyDescription) {
		this.geologyDescription = geologyDescription;
	}


	public String getEnvironmentProblem() {
		return environmentProblem;
	}


	public void setEnvironmentProblem(String environmentProblem) {
		this.environmentProblem = environmentProblem;
	}

    
    //BasicInfosetter and getter
    
	

	public String getNameCurrent() {
		return nameCurrent;
	}

	public void setNameCurrent(String nameCurrent) {
		this.nameCurrent = nameCurrent;
	}

	public String getNameOther() {
		return nameOther;
	}

	public void setNameOther(String nameOther) {
		this.nameOther = nameOther;
	}

	public String getRegionProvince() {
		return regionProvince;
	}

	public void setRegionProvince(String regionProvince) {
		this.regionProvince = regionProvince;
	}

	public String getRegionCity() {
		return regionCity;
	}

	public void setRegionCity(String regionCity) {
		this.regionCity = regionCity;
	}

	public String getRegionDistrict() {
		return regionDistrict;
	}

	public void setRegionDistrict(String regionDistrict) {
		this.regionDistrict = regionDistrict;
	}

	public String getRegionSpecification() {
		return regionSpecification;
	}

	public void setRegionSpecification(String regionSpecification) {
		this.regionSpecification = regionSpecification;
	}

	public String getAgencyName() {
		return agencyName;
	}

	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
	}

	public String getAgencyAffiliation() {
		return agencyAffiliation;
	}

	public void setAgencyAffiliation(String agencyAffiliation) {
		this.agencyAffiliation = agencyAffiliation;
	}

	public String getAgencyOfficePosition() {
		return agencyOfficePosition;
	}

	public void setAgencyOfficePosition(String agencyOfficePosition) {
		this.agencyOfficePosition = agencyOfficePosition;
	}

	public String getAgencyLinkman() {
		return agencyLinkman;
	}

	public void setAgencyLinkman(String agencyLinkman) {
		this.agencyLinkman = agencyLinkman;
	}

	public String getAgencyMobilePhone() {
		return agencyMobilePhone;
	}

	public void setAgencyMobilePhone(String agencyMobilePhone) {
		this.agencyMobilePhone = agencyMobilePhone;
	}

	public String getAgencyOfficePhone() {
		return agencyOfficePhone;
	}

	public void setAgencyOfficePhone(String agencyOfficePhone) {
		this.agencyOfficePhone = agencyOfficePhone;
	}

	public String getAgencyFax() {
		return agencyFax;
	}

	public void setAgencyFax(String agencyFax) {
		this.agencyFax = agencyFax;
	}

	public String getAgencyEmail() {
		return agencyEmail;
	}

	public void setAgencyEmail(String agencyEmail) {
		this.agencyEmail = agencyEmail;
	}

	public String getAgencyWebsite() {
		return agencyWebsite;
	}

	public void setAgencyWebsite(String agencyWebsite) {
		this.agencyWebsite = agencyWebsite;
	}

	public String getAgencyOtherInfo() {
		return agencyOtherInfo;
	}

	public void setAgencyOtherInfo(String agencyOtherInfo) {
		this.agencyOtherInfo = agencyOtherInfo;
	}
	
	//GeologyInfo setters and getters
	

	public TbBasicinfo getTbBasicinfo() {
		return tbBasicinfo;
	}


	public void setTbBasicinfo(TbBasicinfo tbBasicinfo) {
		this.tbBasicinfo = tbBasicinfo;
	}


	public String getNorthLatitude() {
		return northLatitude;
	}


	public void setNorthLatitude(String northLatitude) {
		this.northLatitude = northLatitude;
	}


	public String getNorthLongitude() {
		return northLongitude;
	}


	public void setNorthLongitude(String northLongitude) {
		this.northLongitude = northLongitude;
	}


	public String getSouthLatitude() {
		return southLatitude;
	}


	public void setSouthLatitude(String southLatitude) {
		this.southLatitude = southLatitude;
	}


	public String getSouthLongitude() {
		return southLongitude;
	}


	public void setSouthLongitude(String southLongitude) {
		this.southLongitude = southLongitude;
	}


	public String getEastLatitude() {
		return eastLatitude;
	}


	public void setEastLatitude(String eastLatitude) {
		this.eastLatitude = eastLatitude;
	}


	public String getEastLongitude() {
		return eastLongitude;
	}


	public void setEastLongitude(String eastLongitude) {
		this.eastLongitude = eastLongitude;
	}


	public String getWestLatitude() {
		return westLatitude;
	}


	public void setWestLatitude(String westLatitude) {
		this.westLatitude = westLatitude;
	}


	public String getWestLongitude() {
		return westLongitude;
	}


	public void setWestLongitude(String westLongitude) {
		this.westLongitude = westLongitude;
	}


	public String getCenterLatitude() {
		return centerLatitude;
	}


	public void setCenterLatitude(String centerLatitude) {
		this.centerLatitude = centerLatitude;
	}


	public String getCenterLongitude() {
		return centerLongitude;
	}


	public void setCenterLongitude(String centerLongitude) {
		this.centerLongitude = centerLongitude;
	}


	public String getReliefContinuousArea() {
		return reliefContinuousArea;
	}


	public void setReliefContinuousArea(String reliefContinuousArea) {
		this.reliefContinuousArea = reliefContinuousArea;
	}


	public String getRedbedContinuousArea() {
		return redbedContinuousArea;
	}


	public void setRedbedContinuousArea(String redbedContinuousArea) {
		this.redbedContinuousArea = redbedContinuousArea;
	}


	public String getRedbedTotalArea() {
		return redbedTotalArea;
	}


	public void setRedbedTotalArea(String redbedTotalArea) {
		this.redbedTotalArea = redbedTotalArea;
	}


	public String getLowAltitude() {
		return lowAltitude;
	}


	public void setLowAltitude(String lowAltitude) {
		this.lowAltitude = lowAltitude;
	}


	public String getHighAltitude() {
		return highAltitude;
	}


	public void setHighAltitude(String highAltitude) {
		this.highAltitude = highAltitude;
	}


	public String getMediumAltitude() {
		return mediumAltitude;
	}


	public void setMediumAltitude(String mediumAltitude) {
		this.mediumAltitude = mediumAltitude;
	}


	public String getRedbedAge() {
		return redbedAge;
	}


	public void setRedbedAge(String redbedAge) {
		this.redbedAge = redbedAge;
	}


	public String getRedbedAgeDescription() {
		return redbedAgeDescription;
	}


	public void setRedbedAgeDescription(String redbedAgeDescription) {
		this.redbedAgeDescription = redbedAgeDescription;
	}


	public String getStratumName1() {
		return stratumName1;
	}


	public void setStratumName1(String stratumName1) {
		this.stratumName1 = stratumName1;
	}


	public String getStratumDescription1() {
		return stratumDescription1;
	}


	public void setStratumDescription1(String stratumDescription1) {
		this.stratumDescription1 = stratumDescription1;
	}


	public String getStratumName2() {
		return stratumName2;
	}


	public void setStratumName2(String stratumName2) {
		this.stratumName2 = stratumName2;
	}


	public String getStratumDescription2() {
		return stratumDescription2;
	}


	public void setStratumDescription2(String stratumDescription2) {
		this.stratumDescription2 = stratumDescription2;
	}


	public String getThickName1() {
		return thickName1;
	}


	public void setThickName1(String thickName1) {
		this.thickName1 = thickName1;
	}


	public String getThickness1() {
		return thickness1;
	}


	public void setThickness1(String thickness1) {
		this.thickness1 = thickness1;
	}


	public String getThickName2() {
		return thickName2;
	}


	public void setThickName2(String thickName2) {
		this.thickName2 = thickName2;
	}


	public String getThickness2() {
		return thickness2;
	}


	public void setThickness2(String thickness2) {
		this.thickness2 = thickness2;
	}


	public String getOffshore1() {
		return offshore1;
	}


	public void setOffshore1(String offshore1) {
		this.offshore1 = offshore1;
	}


	public String getOffshore2() {
		return offshore2;
	}


	public void setOffshore2(String offshore2) {
		this.offshore2 = offshore2;
	}


	public String getEolianDeposit() {
		return eolianDeposit;
	}


	public void setEolianDeposit(String eolianDeposit) {
		this.eolianDeposit = eolianDeposit;
	}


	public String getEolianDepositDescription() {
		return eolianDepositDescription;
	}


	public void setEolianDepositDescription(String eolianDepositDescription) {
		this.eolianDepositDescription = eolianDepositDescription;
	}


	public String getConglomerateSize() {
		return conglomerateSize;
	}


	public void setConglomerateSize(String conglomerateSize) {
		this.conglomerateSize = conglomerateSize;
	}


	public String getConglomerateColor() {
		return conglomerateColor;
	}


	public void setConglomerateColor(String conglomerateColor) {
		this.conglomerateColor = conglomerateColor;
	}


	public String getConglomerateIngredient() {
		return conglomerateIngredient;
	}


	public void setConglomerateIngredient(String conglomerateIngredient) {
		this.conglomerateIngredient = conglomerateIngredient;
	}


	public String getConglomerateCement() {
		return conglomerateCement;
	}


	public void setConglomerateCement(String conglomerateCement) {
		this.conglomerateCement = conglomerateCement;
	}


	public String getConglomerateStructure() {
		return conglomerateStructure;
	}


	public void setConglomerateStructure(String conglomerateStructure) {
		this.conglomerateStructure = conglomerateStructure;
	}


	public String getConglomerateResistence() {
		return conglomerateResistence;
	}


	public void setConglomerateResistence(String conglomerateResistence) {
		this.conglomerateResistence = conglomerateResistence;
	}


	public String getConglomerateFossil() {
		return conglomerateFossil;
	}


	public void setConglomerateFossil(String conglomerateFossil) {
		this.conglomerateFossil = conglomerateFossil;
	}


	public String getConglomerateAppearance() {
		return conglomerateAppearance;
	}


	public void setConglomerateAppearance(String conglomerateAppearance) {
		this.conglomerateAppearance = conglomerateAppearance;
	}


	public String getConglomeratePickup() {
		return conglomeratePickup;
	}


	public void setConglomeratePickup(String conglomeratePickup) {
		this.conglomeratePickup = conglomeratePickup;
	}


	public String getSandstoneSize() {
		return sandstoneSize;
	}


	public void setSandstoneSize(String sandstoneSize) {
		this.sandstoneSize = sandstoneSize;
	}


	public String getSandstoneColor() {
		return sandstoneColor;
	}


	public void setSandstoneColor(String sandstoneColor) {
		this.sandstoneColor = sandstoneColor;
	}


	public String getSandstoneIngredient() {
		return sandstoneIngredient;
	}


	public void setSandstoneIngredient(String sandstoneIngredient) {
		this.sandstoneIngredient = sandstoneIngredient;
	}


	public String getSandstoneCement() {
		return sandstoneCement;
	}


	public void setSandstoneCement(String sandstoneCement) {
		this.sandstoneCement = sandstoneCement;
	}


	public String getSandstoneStructure() {
		return sandstoneStructure;
	}


	public void setSandstoneStructure(String sandstoneStructure) {
		this.sandstoneStructure = sandstoneStructure;
	}


	public String getSandstoneResistence() {
		return sandstoneResistence;
	}


	public void setSandstoneResistence(String sandstoneResistence) {
		this.sandstoneResistence = sandstoneResistence;
	}


	public String getSandstoneFossil() {
		return sandstoneFossil;
	}


	public void setSandstoneFossil(String sandstoneFossil) {
		this.sandstoneFossil = sandstoneFossil;
	}


	public String getSandstoneAppearance() {
		return sandstoneAppearance;
	}


	public void setSandstoneAppearance(String sandstoneAppearance) {
		this.sandstoneAppearance = sandstoneAppearance;
	}


	public String getSandstonePickup() {
		return sandstonePickup;
	}


	public void setSandstonePickup(String sandstonePickup) {
		this.sandstonePickup = sandstonePickup;
	}


	public String getSiltstoneSize() {
		return siltstoneSize;
	}


	public void setSiltstoneSize(String siltstoneSize) {
		this.siltstoneSize = siltstoneSize;
	}


	public String getSiltstoneColor() {
		return siltstoneColor;
	}


	public void setSiltstoneColor(String siltstoneColor) {
		this.siltstoneColor = siltstoneColor;
	}


	public String getSiltstoneIngredient() {
		return siltstoneIngredient;
	}


	public void setSiltstoneIngredient(String siltstoneIngredient) {
		this.siltstoneIngredient = siltstoneIngredient;
	}


	public String getSiltstoneCement() {
		return siltstoneCement;
	}


	public void setSiltstoneCement(String siltstoneCement) {
		this.siltstoneCement = siltstoneCement;
	}


	public String getSiltstoneStructure() {
		return siltstoneStructure;
	}


	public void setSiltstoneStructure(String siltstoneStructure) {
		this.siltstoneStructure = siltstoneStructure;
	}


	public String getSiltstoneResistence() {
		return siltstoneResistence;
	}


	public void setSiltstoneResistence(String siltstoneResistence) {
		this.siltstoneResistence = siltstoneResistence;
	}


	public String getSiltstoneFossil() {
		return siltstoneFossil;
	}


	public void setSiltstoneFossil(String siltstoneFossil) {
		this.siltstoneFossil = siltstoneFossil;
	}


	public String getSiltstoneAppearance() {
		return siltstoneAppearance;
	}


	public void setSiltstoneAppearance(String siltstoneAppearance) {
		this.siltstoneAppearance = siltstoneAppearance;
	}


	public String getSiltstonePickup() {
		return siltstonePickup;
	}


	public void setSiltstonePickup(String siltstonePickup) {
		this.siltstonePickup = siltstonePickup;
	}


	public String getClaySize() {
		return claySize;
	}


	public void setClaySize(String claySize) {
		this.claySize = claySize;
	}


	public String getClayColor() {
		return clayColor;
	}


	public void setClayColor(String clayColor) {
		this.clayColor = clayColor;
	}


	public String getClayIngredient() {
		return clayIngredient;
	}


	public void setClayIngredient(String clayIngredient) {
		this.clayIngredient = clayIngredient;
	}


	public String getClayCement() {
		return clayCement;
	}


	public void setClayCement(String clayCement) {
		this.clayCement = clayCement;
	}


	public String getClayStructure() {
		return clayStructure;
	}


	public void setClayStructure(String clayStructure) {
		this.clayStructure = clayStructure;
	}


	public String getClayResistence() {
		return clayResistence;
	}


	public void setClayResistence(String clayResistence) {
		this.clayResistence = clayResistence;
	}


	public String getClayFossil() {
		return clayFossil;
	}


	public void setClayFossil(String clayFossil) {
		this.clayFossil = clayFossil;
	}


	public String getClayAppearance() {
		return clayAppearance;
	}


	public void setClayAppearance(String clayAppearance) {
		this.clayAppearance = clayAppearance;
	}


	public String getClayPickup() {
		return clayPickup;
	}


	public void setClayPickup(String clayPickup) {
		this.clayPickup = clayPickup;
	}


	public String getStructurePosition() {
		return structurePosition;
	}


	public void setStructurePosition(String structurePosition) {
		this.structurePosition = structurePosition;
	}


	public String getBasinName() {
		return basinName;
	}


	public void setBasinName(String basinName) {
		this.basinName = basinName;
	}


	public String getBasinAge() {
		return basinAge;
	}


	public void setBasinAge(String basinAge) {
		this.basinAge = basinAge;
	}


	public String getStructureMotion() {
		return structureMotion;
	}


	public void setStructureMotion(String structureMotion) {
		this.structureMotion = structureMotion;
	}


	public String getStructureLine() {
		return structureLine;
	}


	public void setStructureLine(String structureLine) {
		this.structureLine = structureLine;
	}


	public String getCrumple() {
		return crumple;
	}


	public void setCrumple(String crumple) {
		this.crumple = crumple;
	}


	public String getFault() {
		return fault;
	}


	public void setFault(String fault) {
		this.fault = fault;
	}


	public String getJoint() {
		return joint;
	}


	public void setJoint(String joint) {
		this.joint = joint;
	}


	public String getStructureDescription() {
		return structureDescription;
	}


	public void setStructureDescription(String structureDescription) {
		this.structureDescription = structureDescription;
	}


	public String getReliefUnit() {
		return reliefUnit;
	}


	public void setReliefUnit(String reliefUnit) {
		this.reliefUnit = reliefUnit;
	}


	public String getReliefPosition() {
		return reliefPosition;
	}


	public void setReliefPosition(String reliefPosition) {
		this.reliefPosition = reliefPosition;
	}


	public String getTerrain() {
		return terrain;
	}


	public void setTerrain(String terrain) {
		this.terrain = terrain;
	}


	public String getReliefDescription() {
		return reliefDescription;
	}


	public void setReliefDescription(String reliefDescription) {
		this.reliefDescription = reliefDescription;
	}


	public String getDependentType() {
		return dependentType;
	}


	public void setDependentType(String dependentType) {
		this.dependentType = dependentType;
	}


	public String getDependentAppearance() {
		return dependentAppearance;
	}


	public void setDependentAppearance(String dependentAppearance) {
		this.dependentAppearance = dependentAppearance;
	}


	public String getDependentForce() {
		return dependentForce;
	}


	public void setDependentForce(String dependentForce) {
		this.dependentForce = dependentForce;
	}


	public String getSlopeType() {
		return slopeType;
	}


	public void setSlopeType(String slopeType) {
		this.slopeType = slopeType;
	}


	public String getSlopeRock() {
		return slopeRock;
	}


	public void setSlopeRock(String slopeRock) {
		this.slopeRock = slopeRock;
	}


	public String getSlopeBody() {
		return slopeBody;
	}


	public void setSlopeBody(String slopeBody) {
		this.slopeBody = slopeBody;
	}


	public String getDanxiaRavine() {
		return danxiaRavine;
	}


	public void setDanxiaRavine(String danxiaRavine) {
		this.danxiaRavine = danxiaRavine;
	}


	public String getDanxiaWall() {
		return danxiaWall;
	}


	public void setDanxiaWall(String danxiaWall) {
		this.danxiaWall = danxiaWall;
	}


	public String getDanxiaCave() {
		return danxiaCave;
	}


	public void setDanxiaCave(String danxiaCave) {
		this.danxiaCave = danxiaCave;
	}


	public String getDanxiaValt() {
		return danxiaValt;
	}


	public void setDanxiaValt(String danxiaValt) {
		this.danxiaValt = danxiaValt;
	}


	public String getDependentShape() {
		return dependentShape;
	}


	public void setDependentShape(String dependentShape) {
		this.dependentShape = dependentShape;
	}


	public String getDependentStage() {
		return dependentStage;
	}


	public void setDependentStage(String dependentStage) {
		this.dependentStage = dependentStage;
	}


	public String getDependentDescription() {
		return dependentDescription;
	}


	public void setDependentDescription(String dependentDescription) {
		this.dependentDescription = dependentDescription;
	}


	public String getCliffMaxHeight() {
		return cliffMaxHeight;
	}


	public void setCliffMaxHeight(String cliffMaxHeight) {
		this.cliffMaxHeight = cliffMaxHeight;
	}


	public String getCliffMediumHeight() {
		return cliffMediumHeight;
	}


	public void setCliffMediumHeight(String cliffMediumHeight) {
		this.cliffMediumHeight = cliffMediumHeight;
	}


	public String getCliffMaxGradient() {
		return cliffMaxGradient;
	}


	public void setCliffMaxGradient(String cliffMaxGradient) {
		this.cliffMaxGradient = cliffMaxGradient;
	}


	public String getCliffMediumGradient() {
		return cliffMediumGradient;
	}


	public void setCliffMediumGradient(String cliffMediumGradient) {
		this.cliffMediumGradient = cliffMediumGradient;
	}


	public String getSlopeShape() {
		return slopeShape;
	}


	public void setSlopeShape(String slopeShape) {
		this.slopeShape = slopeShape;
	}


	public String getCornerType() {
		return cornerType;
	}


	public void setCornerType(String cornerType) {
		this.cornerType = cornerType;
	}


	public String getSlopeDescription() {
		return slopeDescription;
	}


	public void setSlopeDescription(String slopeDescription) {
		this.slopeDescription = slopeDescription;
	}


	public String getLandmarkScene() {
		return landmarkScene;
	}


	public void setLandmarkScene(String landmarkScene) {
		this.landmarkScene = landmarkScene;
	}


	public String getSpecialScene() {
		return specialScene;
	}


	public void setSpecialScene(String specialScene) {
		this.specialScene = specialScene;
	}


	public String getReliefStructure() {
		return reliefStructure;
	}


	public void setReliefStructure(String reliefStructure) {
		this.reliefStructure = reliefStructure;
	}


	public String getOverallScene() {
		return overallScene;
	}


	public void setOverallScene(String overallScene) {
		this.overallScene = overallScene;
	}

    //DAO getters and setters
	public TbBasicinfoDAO getTbBasicinfoDAO() {
		return tbBasicinfoDAO;
	}
	public void setTbBasicinfoDAO(TbBasicinfoDAO tbBasicinfoDAO) {
		this.tbBasicinfoDAO = tbBasicinfoDAO;
	}
	public TbGeologyinfoDAO getTbGeologyinfoDAO() {
		return tbGeologyinfoDAO;
	}

	public void setTbGeologyinfoDAO(TbGeologyinfoDAO tbGeologyinfoDAO) {
		this.tbGeologyinfoDAO = tbGeologyinfoDAO;
	}

	public TbEnvironmentinfoDAO getTbEnvironmentinfoDAO() {
		return tbEnvironmentinfoDAO;
	}

	public void setTbEnvironmentinfoDAO(TbEnvironmentinfoDAO tbEnvironmentinfoDAO) {
		this.tbEnvironmentinfoDAO = tbEnvironmentinfoDAO;
	}

	public TbCultureinfoDAO getTbCultureinfoDAO() {
		return tbCultureinfoDAO;
	}

	public void setTbCultureinfoDAO(TbCultureinfoDAO tbCultureinfoDAO) {
		this.tbCultureinfoDAO = tbCultureinfoDAO;
	}

	public TbInvestigatorinfoDAO getTbInvestigatorinfoDAO() {
		return tbInvestigatorinfoDAO;
	}

	public void setTbInvestigatorinfoDAO(TbInvestigatorinfoDAO tbInvestigatorinfoDAO) {
		this.tbInvestigatorinfoDAO = tbInvestigatorinfoDAO;
	}

	public TbWorldlevelDAO getTbWorldlevelDAO() {
		return tbWorldlevelDAO;
	}

	public void setTbWorldlevelDAO(TbWorldlevelDAO tbWorldlevelDAO) {
		this.tbWorldlevelDAO = tbWorldlevelDAO;
	}

	public TbCountrylevelDAO getTbCountrylevelDAO() {
		return tbCountrylevelDAO;
	}

	public void setTbCountrylevelDAO(TbCountrylevelDAO tbCountrylevelDAO) {
		this.tbCountrylevelDAO = tbCountrylevelDAO;
	}

	public TbProvincelevelDAO getTbProvincelevelDAO() {
		return tbProvincelevelDAO;
	}

	public void setTbProvincelevelDAO(TbProvincelevelDAO tbProvincelevelDAO) {
		this.tbProvincelevelDAO = tbProvincelevelDAO;
	}

	public TbLakelevelDAO getTbLakelevelDAO() {
		return tbLakelevelDAO;
	}

	public void setTbLakelevelDAO(TbLakelevelDAO tbLakelevelDAO) {
		this.tbLakelevelDAO = tbLakelevelDAO;
	}

	public TbGeneralpicDAO getTbGeneralpicDAO() {
		return tbGeneralpicDAO;
	}

	public void setTbGeneralpicDAO(TbGeneralpicDAO tbGeneralpicDAO) {
		this.tbGeneralpicDAO = tbGeneralpicDAO;
	}

	public TbLandmarksceneDAO getTbLandmarksceneDAO() {
		return tbLandmarksceneDAO;
	}

	public void setTbLandmarksceneDAO(TbLandmarksceneDAO tbLandmarksceneDAO) {
		this.tbLandmarksceneDAO = tbLandmarksceneDAO;
	}

	public TbGeologysceneDAO getTbGeologysceneDAO() {
		return tbGeologysceneDAO;
	}

	public void setTbGeologysceneDAO(TbGeologysceneDAO tbGeologysceneDAO) {
		this.tbGeologysceneDAO = tbGeologysceneDAO;
	}

	public TbCulturesceneDAO getTbCulturesceneDAO() {
		return tbCulturesceneDAO;
	}

	public void setTbCulturesceneDAO(TbCulturesceneDAO tbCulturesceneDAO) {
		this.tbCulturesceneDAO = tbCulturesceneDAO;
	}

	public TbAuditinfoDAO getTbAuditinfoDAO() {
		return tbAuditinfoDAO;
	}

	public void setTbAuditinfoDAO(TbAuditinfoDAO tbAuditinfoDAO) {
		this.tbAuditinfoDAO = tbAuditinfoDAO;
	}
    
}
