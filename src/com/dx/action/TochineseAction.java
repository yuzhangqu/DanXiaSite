package com.dx.action;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class TochineseAction {
	private Map<String, Object> session;
	public String execute(){
		session = ActionContext.getContext().getSession();
		session.remove("language");
		session.put("language", "zh_CN");
		return "success";
	}
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
