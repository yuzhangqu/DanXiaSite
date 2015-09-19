package com.dx.action;

import java.util.Map;

import com.dx.bean.TbTitbits;
import com.dx.dao.TbTitbitsDAO;
import com.opensymphony.xwork2.ActionContext;

public class DeleteTitbitsAction {
  private int id;
  private TbTitbitsDAO dao;
  private TbTitbits titbits;
  private Map session;
  
  public String execute(){

	  titbits = dao.findById(id);
	  dao.delete(titbits);
	  
	  //session = ActionContext.getContext().getSession();
	  //session.remove("titbits");
	  return "success";
  }


	public int getId() {
		return id;
	}
	
	
	public void setId(int id) {
		this.id = id;
	}
	
	
	public TbTitbitsDAO getDao() {
		return dao;
	}
	
	
	public void setDao(TbTitbitsDAO dao) {
		this.dao = dao;
	}
	  
  
}
