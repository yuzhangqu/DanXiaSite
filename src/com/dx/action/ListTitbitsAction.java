package com.dx.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dx.bean.TbTitbits;
import com.dx.dao.TbTitbitsDAO;


public class ListTitbitsAction {

	private List<TbTitbits> titbits;
	private TbTitbitsDAO dao;
	private HttpServletRequest request;
	public String execute(){
		titbits = new ArrayList();
		titbits = dao.findAll();
		
		//request = ServletActionContext.getRequest();
		//request.getSession().setAttribute("titbits", titbits);
		return "success";
	}

	public TbTitbitsDAO getDao() {
		return dao;
	}

	public void setDao(TbTitbitsDAO dao) {
		this.dao = dao;
	}

	public List<TbTitbits> getTitbits() {
		return titbits;
	}

	public void setTitbits(List<TbTitbits> titbits) {
		this.titbits = titbits;
	}



}
