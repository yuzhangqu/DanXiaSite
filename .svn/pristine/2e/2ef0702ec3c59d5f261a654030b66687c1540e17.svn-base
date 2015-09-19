package com.dx.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dx.bean.TbNews;
import com.dx.dao.TbNewsDAO;


public class SearchNewsAllAction {

	private List<TbNews> newsAll;
	private TbNewsDAO dao;
	private HttpServletRequest request;
	public String execute(){
		newsAll = new ArrayList();
		newsAll = dao.findAll();
		
		//request = ServletActionContext.getRequest();
		//request.getSession().setAttribute("news", newsAll);
		return "success";
	}

	public TbNewsDAO getDao() {
		return dao;
	}

	public void setDao(TbNewsDAO dao) {
		this.dao = dao;
	}

	public List<TbNews> getNewsAll() {
		return newsAll;
	}

	public void setNewsAll(List<TbNews> newsAll) {
		this.newsAll = newsAll;
	}



}
