package com.dx.action;

import java.sql.SQLException;
import java.util.List;
import com.dx.bean.TbBasicinfo;
import com.dx.dao.TbBasicinfoDAO;

public class SearchDeleteInfoAction{
	private List<TbBasicinfo> info;
	private TbBasicinfo basic;
	private TbBasicinfoDAO dao;	
	private String nameCurrent;
	private String province;
	private String city;
	private String contact;
	private String institution;
	private int page;
	
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
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String execute() throws ClassNotFoundException, SQLException{
//		info = new ArrayList();
//		Class.forName("com.mysql.jdbc.Driver");
//		Connection ct=DriverManager.getConnection("jdbc:mysql://192.168.1.39:3306/db_info","root","1123581321");
//		Statement sm=ct.createStatement();
//		String sql="select * from tb_basicinfo where nameCurrent like\'%"+nameCurrent+"%\'";
//		ResultSet rs=sm.executeQuery(sql);
//		while(rs.next()){
//			basic = new TbBasicinfo();
//			basic.setBasicId(rs.getInt("basicId"));
//			basic.setNameCurrent(rs.getString("nameCurrent"));
//			basic.setNameOther(rs.getString("nameOther"));
//			basic.setRegionProvince(rs.getString("regionProvince"));
//			basic.setRegionCity(rs.getString("regionCity"));
//			basic.setRegionDistrict(rs.getString("regionDistrict"));
//			basic.setRegionSpecification(rs.getString("regionSpecification"));
//			basic.setAgencyName(rs.getString("agencyName"));
//			basic.setAgencyAffiliation(rs.getString("agencyAffiliation"));
//			basic.setAgencyOfficePosition(rs.getString("agencyOfficePosition"));
//			basic.setAgencyLinkman(rs.getString("agencyLinkman"));
//			basic.setAgencyMobilePhone(rs.getString("agencyMobilePhone"));
//			basic.setAgencyFax(rs.getString("agencyFax"));
//			basic.setAgencyEmail(rs.getString("agencyEmail"));
//			basic.setAgencyWebsite(rs.getString("agencyWebsite"));
//			basic.setAgencyOtherInfo(rs.getString("agencyOtherInfo"));
//			info.add(basic);
//		}
		
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
