package com.dx.action;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import com.dx.dao.TbTitbitsDAO;

@Controller

public class ShowTitbitsAction extends SessionAction{

	private String id; 
	private TbTitbitsDAO dao;
	
	public String execute(){
		Integer myId = Integer.parseInt(id);
		ServletActionContext.getRequest().setAttribute("content", dao.findById(myId).getContent());
		return "success";
	}

	public void setId(String id) {
		this.id = id; 
	}

	public String getId() {
		return id;
	}

	public TbTitbitsDAO getDao() {
		return dao;
	}

	public void setDao(TbTitbitsDAO dao) {
		this.dao = dao;
	}

}
