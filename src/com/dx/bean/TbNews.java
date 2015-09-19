package com.dx.bean;

import java.util.Date;

/**
 * TbNews entity. @author MyEclipse Persistence Tools
 */

public class TbNews implements java.io.Serializable {

	// Fields

	private Integer id;
	private String userName;
	private Date date;
	private String title;
	private String content;

	// Constructors

	/** default constructor */
	public TbNews() {
	}

	/** minimal constructor */
	public TbNews(String userName, Date date, String title) {
		this.userName = userName;
		this.date = date;
		this.title = title;
	}

	/** full constructor */
	public TbNews(String userName, Date date, String title, String content) {
		this.userName = userName;
		this.date = date;
		this.title = title;
		this.content = content;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}