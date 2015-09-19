package com.dx.action;

import com.dx.bean.TbUserinfo;
import com.dx.dao.TbUserinfoDAO;
import com.opensymphony.xwork2.ActionContext;

import java.util.*;

public class RegisterAction {
	private String userName;
	private String password;
	private String userType;
	private TbUserinfoDAO dao;
	private Map session;

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public String execute() {

		List<TbUserinfo> temp = (List<TbUserinfo>) dao.findByUserName(userName);
		System.out.println("aa");
		if (temp.size() != 0)
			return "false";
		else {
			TbUserinfo userInfo = new TbUserinfo(userName, password, "passer");
			dao.save(userInfo);
			session = ActionContext.getContext().getSession();
			session.put("type", userInfo.getUserType());
			session.put("userName", userName);
			LogInAction log = new LogInAction();
            log.LogIn(userName);
			return "success";
		}
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public TbUserinfoDAO getDao() {
		return dao;
	}

	public void setDao(TbUserinfoDAO dao) {
		this.dao = dao;
	}
}
