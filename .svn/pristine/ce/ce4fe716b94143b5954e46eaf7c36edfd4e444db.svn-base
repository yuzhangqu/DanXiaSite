package com.dx.action;


import java.util.List;
import com.dx.bean.TbBasicinfo;
import com.dx.dao.TbBasicinfoDAO;

public class SearchInfoAction{
	private List<TbBasicinfo> info;
	private TbBasicinfo basic;
	private TbBasicinfoDAO dao;	
	private String nameCurrent;
	private String province;
	private String city;
	private String contact;
	private String institution;
	private int page;
	
	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getInstitution() {
		return institution;
	}

	public void setInstitution(String institution) {
		this.institution = institution;
	}

	public TbBasicinfo getBasic() {
		return basic;
	}

	public void setBasic(TbBasicinfo basic) {
		this.basic = basic;
	}

	public List<TbBasicinfo> getInfo() {
		return info;
	}

	public void setInfo(List<TbBasicinfo> info) {
		this.info = info;
	}

	public TbBasicinfoDAO getDao() {
		return dao;
	}

	public void setDao(TbBasicinfoDAO dao) {
		this.dao = dao;
	}

	public String getNameCurrent() {
		return nameCurrent;
	}

	public void setNameCurrent(String nameCurrent) {
		this.nameCurrent = nameCurrent;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String execute() {
		if (page < 1) {
			page = 1;
		}
		info = dao.search(nameCurrent,province,city,institution,contact,page);

		if (page > 1 && info.size() < 1) {
			page--;
			info = dao.search(nameCurrent,province,city,institution,contact,page);
		}
		
		return "success";
	}
}
