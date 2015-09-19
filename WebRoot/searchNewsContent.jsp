<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="com.dx.servlet.Counter"%>
<%@ page import="com.dx.bean.TbNews"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="maincss.css">
<title>丹霞地貌信息系统</title>
</head>
<body>
   <div class="indexmain">
        <div class="main">
            <img class="title" src="img/index2.jpg" alt="" />
            
           
					<div class="content_pos">
                        <br/>
                      <%out.println(request.getAttribute("content")); %>
                      
                      
                     </div><br/>
          <div align="center">
			<input type="button" class="button03" value="返回" onclick="window.location.href='displayNews'"/>
           </div>
           <br/>
            <div style="clear: both"></div>
            <%@include file="footer_frame.jsp"%>