package com.dx.action;
import java.util.List;
import java.util.Map;

import com.dx.bean.TbUserinfo;
import com.dx.dao.TbUserinfoDAO;
import com.opensymphony.xwork2.ActionContext;

public class LogInAction {
	private String userName;
	private String password;
	private TbUserinfoDAO dao;
	private Map session;

	public String execute(){		
			TbUserinfo userInfo;
			List <TbUserinfo> temp = dao.findByUserName(userName);
			if(temp.size() == 0 )
				return "false";
			else{				
				userInfo = temp.get(0);
				if(userInfo.getPassword().equals(password))
				{

					session = ActionContext.getContext().getSession();
					session.put("type", userInfo.getUserType());
					session.put("userName", userName);
					return "success";
				}
				else
					return "false";
		}
	}
	
	public String LogIn(String userName){
		return "success";
		
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

	public TbUserinfoDAO getDao() {
		return dao;
	}

	public void setDao(TbUserinfoDAO dao) {
		this.dao = dao;
	}

	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}
	
	
}
