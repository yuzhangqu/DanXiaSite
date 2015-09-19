package com.dx.action;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import java.util.*;

import com.dx.bean.TbNews;
import com.dx.dao.TbNewsDAO;
import com.opensymphony.xwork2.ActionContext;


public class DisplayNewsAction extends SessionAction{

	private List<TbNews> newsList;
	//private List<String> newsTitleList;
	private int page;

	//private TbNews news;
	private HttpServletRequest request;
    private TbNewsDAO dao;
    private Map session;
	

	public TbNewsDAO getDao() {
		return dao;
	}

	public void setDao(TbNewsDAO dao) {
		this.dao = dao;
	}

	public String execute(){
		page = 0;
		session = ActionContext.getContext().getSession();
		session.put("page", page);
		newsList = new ArrayList();
		List<TbNews> temp = dao.findAll();
		//for(int i = 0; i < newsList.size() ; ++i)
		//{
			//newsTitleList.add(temp.get(i).getTitle());
		//}
	    //List<TbNews> recentNews = new ArrayList();
	    if(temp.size()>0)
	    	newsList.add(temp.get(temp.size()-1));
	    if(temp.size()>1)
	    	newsList.add(temp.get(temp.size()-2));
	    if(temp.size()>2)
	    	newsList.add(temp.get(temp.size()-3));
	    if(temp.size()>3)
	    	newsList.add(temp.get(temp.size()-4));
		//request = ServletActionContext.getRequest();
		//request.getSession().setAttribute("newsList", recentNews);
		
		return "success";
	}
	
	public void setNewsList(List<TbNews> newsList) {
		this.newsList = newsList;
	}

	public List<TbNews> getNewsList() {
		return newsList;
	}

	//public void setNews(TbNews news) {
		//this.news = news;
	//}

	//public TbNews getNews() {
		//return news;
	//}

	//public List<String> getNewsTitleList() {
		//return newsTitleList;
	//}

	//public void setNewsTitleList(List<String> newsTitleList) {
		//this.newsTitleList = newsTitleList;
	//}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
    

}
