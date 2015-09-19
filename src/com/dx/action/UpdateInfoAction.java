package com.dx.action;
import com.dx.bean.*;
import com.dx.dao.*;
public class UpdateInfoAction {

	private String nameCurrent;
	private String regionProvince;
	private String regionCity;
	private Integer detailID;
	private TbBasicinfo detailBasicInfo;
	private TbGeologyinfo detailGeologyInfo;
	private TbInvestigatorinfo detailInvestigatorInfo;
	private TbAuditinfo detailAuditInfo;
	private TbCultureinfo detailCultureInfo;
	private TbEnvironmentinfo detailEnvironmentInfo;

	private TbBasicinfoDAO bdao;
	
	private String id; //the basicId returned from the webpage. it's used to search all detail info from database.
	
	public Integer getDetailID() {
		return detailID;
	}
	public void setDetailID(Integer detailID) {
		this.detailID = detailID;
	}
	
	public String execute(){
		Integer myId = Integer.parseInt(id);
		detailBasicInfo = bdao.findById(myId);
		detailGeologyInfo = detailBasicInfo.getTbGeologyinfo();
		detailInvestigatorInfo = detailBasicInfo.getTbInvestigatorinfo(); 
		detailAuditInfo = detailBasicInfo.getTbAuditinfo();
		detailCultureInfo = detailBasicInfo.getTbCultureinfo();
		detailEnvironmentInfo = detailBasicInfo.getTbEnvironmentinfo();
		return "success";
	}
	public String getNameCurrent() {
		return nameCurrent;
	}
	public void setNameCurrent(String nameCurrent) {
		this.nameCurrent = nameCurrent;
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
	public TbBasicinfo getDetailBasicInfo() {
		return detailBasicInfo;
	}
	public void setDetailBasicInfo(TbBasicinfo detailBasicInfo) {
		this.detailBasicInfo = detailBasicInfo;
	}
	public TbGeologyinfo getDetailGeologyInfo() {
		return detailGeologyInfo;
	}
	public void setDetailGeologyInfo(TbGeologyinfo detailGeologyInfo) {
		this.detailGeologyInfo = detailGeologyInfo;
	}
	public TbInvestigatorinfo getDetailInvestigatorInfo() {
		return detailInvestigatorInfo;
	}
	public void setDetailInvestigatorInfo(TbInvestigatorinfo detailInvestigatorInfo) {
		this.detailInvestigatorInfo = detailInvestigatorInfo;
	}
	public TbAuditinfo getDetailAuditInfo() {
		return detailAuditInfo;
	}
	public void setDetailAuditInfo(TbAuditinfo detailAuditInfo) {
		this.detailAuditInfo = detailAuditInfo;
	}
	public TbCultureinfo getDetailCultureInfo() {
		return detailCultureInfo;
	}
	public void setDetailCultureInfo(TbCultureinfo detailCultureInfo) {
		this.detailCultureInfo = detailCultureInfo;
	}
	public TbEnvironmentinfo getDetailEnvironmentInfo() {
		return detailEnvironmentInfo;
	}
	public void setDetailEnvironmentInfo(TbEnvironmentinfo detailEnvironmentInfo) {
		this.detailEnvironmentInfo = detailEnvironmentInfo;
	}

	public TbBasicinfoDAO getBdao() {
		return bdao;
	}
	public void setBdao(TbBasicinfoDAO bdao) {
		this.bdao = bdao;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	

	
}
