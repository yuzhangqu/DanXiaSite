package com.dx.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dx.bean.TbPost;
import com.dx.dao.TbPostDAO;


public class ListPostsAction {

	private List<TbPost> posts;
	private TbPostDAO dao;
	private HttpServletRequest request;
	public String execute(){
		posts = new ArrayList();
		posts = dao.findAll();
		
		request = ServletActionContext.getRequest();
		request.getSession().setAttribute("posts", posts);
		return "success";
	}

	public TbPostDAO getDao() {
		return dao;
	}

	public void setDao(TbPostDAO dao) {
		this.dao = dao;
	}

	public List<TbPost> getPosts() {
		return posts;
	}

	public void setPosts(List<TbPost> posts) {
		this.posts = posts;
	}



}
