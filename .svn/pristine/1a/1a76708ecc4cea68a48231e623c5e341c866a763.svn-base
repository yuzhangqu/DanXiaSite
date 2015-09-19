package com.dx.action;
import java.util.List;
import java.util.Map;

import com.dx.bean.TbUserinfo;
import com.dx.dao.TbUserinfoDAO;
import com.opensymphony.xwork2.ActionContext;

public class ToenglishAction {
	private Map session;
	public String execute(){
		session = ActionContext.getContext().getSession();
		session.remove("language");
		session.put("language", "en_US");
		return "success";
	}
	public Map getSession() {
		return session;
	}

	public void setSession(Map session) {
		this.session = session;
	}

}
