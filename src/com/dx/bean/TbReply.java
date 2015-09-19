package com.dx.bean;

import java.util.Date;

/**
 * TbReply entity. @author MyEclipse Persistence Tools
 */

public class TbReply implements java.io.Serializable {

	// Fields

	private Integer replyId;
	private TbPost tbPost;
	private Integer floor;
	private String content;
	private String author;
	private Date replyTime;
	private Integer status;

	// Constructors

	/** default constructor */
	public TbReply() {
	}

	/** full constructor */
	public TbReply(TbPost tbPost, Integer floor, String content, String author,
			Date replyTime, Integer status) {
		this.tbPost = tbPost;
		this.floor = floor;
		this.content = content;
		this.author = author;
		this.replyTime = replyTime;
		this.status = status;
	}

	// Property accessors

	public Integer getReplyId() {
		return this.replyId;
	}

	public void setReplyId(Integer replyId) {
		this.replyId = replyId;
	}

	public TbPost getTbPost() {
		return this.tbPost;
	}

	public void setTbPost(TbPost tbPost) {
		this.tbPost = tbPost;
	}

	public Integer getFloor() {
		return this.floor;
	}

	public void setFloor(Integer floor) {
		this.floor = floor;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Date getReplyTime() {
		return this.replyTime;
	}

	public void setReplyTime(Date replyTime) {
		this.replyTime = replyTime;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}