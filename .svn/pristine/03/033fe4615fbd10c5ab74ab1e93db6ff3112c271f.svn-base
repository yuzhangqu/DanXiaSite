package com.dx.action;

import java.util.List;

import com.dx.bean.*;
import com.dx.dao.TbBasicinfoDAO;


public class SaveUpdateInfoAction {
	
    
	private TbBasicinfo detailBasicInfo;
	private TbGeologyinfo detailGeologyInfo;
	private TbInvestigatorinfo detailInvestigatorInfo;
	private TbAuditinfo detailAuditInfo;
	private TbCultureinfo detailCultureInfo;
	private TbEnvironmentinfo detailEnvironmentInfo;
	private TbBasicinfoDAO dao;
	
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

	public TbBasicinfoDAO getDao() {
		return dao;
	}

	public void setDao(TbBasicinfoDAO dao) {
		this.dao = dao;
	}

	public String execute(){
	    detailGeologyInfo.setTbBasicinfo(detailBasicInfo);
	    detailCultureInfo.setTbBasicinfo(detailBasicInfo);
	    detailEnvironmentInfo.setTbBasicinfo(detailBasicInfo);
	    detailAuditInfo.setTbBasicinfo(detailBasicInfo);
	    detailInvestigatorInfo.setTbBasicinfo(detailBasicInfo);
	    
	    detailGeologyInfo.setBasicId(detailBasicInfo.getBasicId());
	    detailCultureInfo.setBasicId(detailBasicInfo.getBasicId());
	    detailEnvironmentInfo.setBasicId(detailBasicInfo.getBasicId());
	    detailAuditInfo.setBasicId(detailBasicInfo.getBasicId());
	    detailInvestigatorInfo.setBasicId(detailBasicInfo.getBasicId());
	    
		detailBasicInfo.setTbGeologyinfo(detailGeologyInfo);
		detailBasicInfo.setTbCultureinfo(detailCultureInfo);
		detailBasicInfo.setTbEnvironmentinfo(detailEnvironmentInfo);
		detailBasicInfo.setTbAuditinfo(detailAuditInfo);
		detailBasicInfo.setTbInvestigatorinfo(detailInvestigatorInfo);
		dao.merge(detailBasicInfo);
    	
    	
    	return "success";
    }
    }