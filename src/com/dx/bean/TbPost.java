package com.dx.bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * TbPost entity. @author MyEclipse Persistence Tools
 */

public class TbPost implements java.io.Serializable {

	// Fields

	private Integer postId;
	private String title;
	private String content;
	private String author;
	private Date postTime;
	private Integer status;
	private Set tbReplies = new HashSet(0);
	private Integer replyNum;

	// Constructors

	/** default constructor */
	public TbPost() {
	}

	/** minimal constructor */
	public TbPost(String title, String content, String author, Date postTime,
			Integer status) {
		this.title = title;
		this.content = content;
		this.author = author;
		this.postTime = postTime;
		this.status = status;
		this.replyNum = 0;
	}

	/** full constructor */
	public TbPost(String title, String content, String author, Date postTime,
			Integer status, Set tbReplies) {
		this.title = title;
		this.content = content;
		this.author = author;
		this.postTime = postTime;
		this.status = status;
		this.tbReplies = tbReplies;
		this.replyNum = tbReplies.size();
	}

	// Property accessors

	public Integer getPostId() {
		return this.postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
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

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Date getPostTime() {
		return this.postTime;
	}

	public void setPostTime(Date postTime) {
		this.postTime = postTime;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Set getTbReplies() {
		return this.tbReplies;
	}

	public void setTbReplies(Set tbReplies) {
		this.tbReplies = tbReplies;
	}
	
	public Integer getReplyNum() {
		return this.replyNum;
	}
	
	public void setReplyNum(Integer replyNum) {
		this.replyNum = replyNum;
	}

}