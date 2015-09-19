package com.dx.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dx.bean.TbCountrylevel;
import com.dx.bean.TbLakelevel;
import com.dx.bean.TbProvincelevel;
import com.dx.bean.TbWorldlevel;
import com.dx.dao.TbCountrylevelDAO;
import com.dx.dao.TbLakelevelDAO;
import com.dx.dao.TbProvincelevelDAO;
import com.dx.dao.TbWorldlevelDAO;

public class DisplayDataAction {
	private HttpServletRequest request;
	private TbCountrylevelDAO cdao;
	private TbProvincelevelDAO pdao;
	private TbWorldlevelDAO wdao;
	private TbLakelevelDAO ldao;
	private List<TbCountrylevel> countrylevels;
	private List<TbProvincelevel> provincelevels;
	private List<TbWorldlevel> worldlevels;
	private List<TbLakelevel> lakelevels;
	
	public String execute(){
		countrylevels = new ArrayList<TbCountrylevel>();
		provincelevels = new ArrayList<TbProvincelevel>();
		worldlevels = new ArrayList<TbWorldlevel>();
		lakelevels = new ArrayList<TbLakelevel>();
		
		int sz = cdao.findAll().size();
		List src = cdao.findAll();
		for (int i = 0; i < sz; i++) {
			countrylevels.add((TbCountrylevel) src.get(i));
		}
		
		sz = pdao.findAll().size();
		src = pdao.findAll();
		for (int i = 0; i < sz; i++) {
			provincelevels.add((TbProvincelevel) src.get(i));
		}
		
		sz = wdao.findAll().size();
		src = wdao.findAll();
		for (int i = 0; i < sz; i++) {
			worldlevels.add((TbWorldlevel) src.get(i));
		}
		
		sz = ldao.findAll().size();
		src = ldao.findAll();
		for (int i = 0; i < sz; i++) {
			lakelevels.add((TbLakelevel) src.get(i));
		}
		
//		request = ServletActionContext.getRequest();
//		request.getSession().setAttribute("provincelevels", provincelevels);
//		
//		request.getSession().setAttribute("cpuntrylevels", countrylevels);
//		
//		request.getSession().setAttribute("worldlevels", worldlevels);
//		
//		request.getSession().setAttribute("lakelevels", lakelevels);
		return"success";
	}
	
	public TbCountrylevelDAO getCdao() {
		return cdao;
	}
	public void setCdao(TbCountrylevelDAO cdao) {
		this.cdao = cdao;
	}
	public TbProvincelevelDAO getPdao() {
		return pdao;
	}
	public void setPdao(TbProvincelevelDAO pdao) {
		this.pdao = pdao;
	}
	public TbWorldlevelDAO getWdao() {
		return wdao;
	}
	public void setWdao(TbWorldlevelDAO wdao) {
		this.wdao = wdao;
	}
	public TbLakelevelDAO getLdao() {
		return ldao;
	}
	public void setLdao(TbLakelevelDAO ldao) {
		this.ldao = ldao;
	}

	public List<TbCountrylevel> getCountrylevels() {
		return countrylevels;
	}

	public void setCountrylevels(List<TbCountrylevel> countrylevels) {
		this.countrylevels = countrylevels;
	}

	public List<TbProvincelevel> getProvincelevels() {
		return provincelevels;
	}

	public void setProvincelevels(List<TbProvincelevel> provincelevels) {
		this.provincelevels = provincelevels;
	}

	public List<TbWorldlevel> getWorldlevels() {
		return worldlevels;
	}

	public void setWorldlevels(List<TbWorldlevel> worldlevels) {
		this.worldlevels = worldlevels;
	}

	public List<TbLakelevel> getLakelevels() {
		return lakelevels;
	}

	public void setLakelevels(List<TbLakelevel> lakelevels) {
		this.lakelevels = lakelevels;
	}
//
//	public HttpServletRequest getRequest() {
//		return request;
//	}
//
//	public void setRequest(HttpServletRequest request) {
//		this.request = request;
//	}
	
	
	
}
