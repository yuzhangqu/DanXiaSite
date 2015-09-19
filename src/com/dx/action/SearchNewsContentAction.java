package com.dx.action;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;
import com.dx.dao.TbNewsDAO;

@Controller

public class SearchNewsContentAction extends SessionAction{

	private String id; 
	private TbNewsDAO dao;
	
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

	public TbNewsDAO getDao() {
		return dao;
	}

	public void setDao(TbNewsDAO dao) {
		this.dao = dao;
	}

}
