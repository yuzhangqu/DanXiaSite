package com.dx.action;

import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

import com.dx.bean.TbTitbits;
import com.dx.dao.TbTitbitsDAO;
import com.opensymphony.xwork2.ActionContext;

public class SaveTitbitsAction {
	private String userName;
	private Date date;
	private String title;
	private String content;
	private Map session;
	private HttpServletRequest request;
	private TbTitbitsDAO dao;
	
	public String execute(){
		this.request = ServletActionContext.getRequest();
		this.session = ActionContext.getContext().getSession(); 
		date = new Date();
		userName = request.getParameter("userName");
		if(userName==null)
		{
			userName = "anonymous2";
		}
		
		if(title == null)
			title = "test";		
		content = request.getParameter("myContent");
		TbTitbits myTitbits = new TbTitbits(userName,date,title,content);
		dao.save(myTitbits);	
		
		//request = ServletActionContext.getRequest();
		//request.getSession().removeAttribute("titbits");
		return "success";
		
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public TbTitbitsDAO getDao() {
		return dao;
	}

	public void setDao(TbTitbitsDAO dao) {
		this.dao = dao;
	}
	
	
}
