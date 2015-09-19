package com.dx.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class LogOutAction {
	 private HttpServletRequest request;
	 private HttpSession session;
	
    public String execute(){
		 this.request = ServletActionContext.getRequest();
	     this.session = this.request.getSession();
	     session.invalidate();
	     return "success";	
		
	}

}
