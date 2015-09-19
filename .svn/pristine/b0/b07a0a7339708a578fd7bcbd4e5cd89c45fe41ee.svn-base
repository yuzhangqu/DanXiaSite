package com.dx.action;

import java.io.File;
import java.util.Set;

import com.dx.bean.TbBasicinfo;
import com.dx.dao.TbBasicinfoDAO;
import com.dx.servlet.MyDataClass;
import com.dx.bean.TbLandmarkscene;

public class deleteInfoAction {
	private int basicId;
	private TbBasicinfoDAO dao;
	private TbBasicinfo info;

	public String execute() {

		info = dao.findById(basicId);
		Set<TbLandmarkscene> s = info.getTbLandmarkscenes(); // TODO: Need to delete the rest files
		for (TbLandmarkscene lms : s) {
			(new File(MyDataClass.landmarkScenePath + lms.getPic())).delete();
		}
		dao.delete(info);
		info = null;
		return "success";
	}

	public int getBasicId() {
		return basicId;
	}

	public void setBasicId(int basicId) {
		this.basicId = basicId;
	}

	public TbBasicinfoDAO getDao() {
		return dao;
	}

	public void setDao(TbBasicinfoDAO dao) {
		this.dao = dao;
	}

	public TbBasicinfo getInfo() {
		return info;
	}

	public void setInfo(TbBasicinfo info) {
		this.info = info;
	}

}
