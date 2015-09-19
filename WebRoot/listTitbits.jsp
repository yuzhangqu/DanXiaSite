<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="com.dx.servlet.Counter"%>
<%@ page import="com.dx.bean.TbTitbits"%>
<%@ page import="javax.servlet.http.Cookie"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="maincss.css">
    <title>丹霞地貌信息系统</title>
   
     <script type="text/javascript" src="js/jquery.js"></script> 
     <script type="text/javascript" src="js/jquery.i18n.properties-1.0.9.js"></script> 
      <script type="text/javascript">
       $(document).ready(function(){
    var filename='IndexStrings';
    <% String lang = (String)session.getAttribute("language");
    if (null == lang) {
    	lang = "zh_CN";
    } 
    %>
    jQuery.i18n.properties({
    
     name:filename,
     path:'',
     mode:'map',
     language: '<%=lang%>',
     callback:function(){
  
        $('#date').text($.i18n.prop('R_date'));
        $('#uname').text($.i18n.prop('R_user'));
        $('#title').text($.i18n.prop('R_title'));
        $('#opr').text($.i18n.prop('R_opr'));
        $('#return').val($.i18n.prop('U_return'));
        $('#newTitbits').val($.i18n.prop('T_create'));
     }
    });
    
});
		
		function deleteTitbits(){
          var d = window.confirm("你确定要删除该花絮？");
           if(d){
             return true;
           }
           else{
             return false;
           }       
       }
       
       function user_validate(webLink){
		    var userName = "null";
			<%Cookie[] cookies = request.getCookies();
			if (cookies != null) {
				for (int i = 0; i < cookies.length; i++) {
					Cookie c = cookies[i];
					if (c.getName().equals("dx_username")) {%>
						var userName = "<%=c.getValue()%>";
					<%}
				}
			}%>
			if (userName == "null") {
				alert("请先登录本系统方可进行操作！");
				return false;
			} else {
				window.location.href = webLink;
			}
		}
       </script>
 
</head>

<body>
    <div class="indexmain">
        <div class="main">
            <img class="title" src="img/index2.jpg" alt="" />
            
            
           <br>
           <br>
					<div class="content_long">
					<div class="content_pos">
						
                        <form name="secondForm" action="searchNewsContent"  method ="post">
                          <table width="600" border="1" cellpadding="5" align="center">
                          
                           <tr>
                            
                            <th width="150"><font id="uname"></font></th>
                        
                            <th width="150"><font id="date"></font></th>
                        
                            <th width="500"><font id="title"></font></th>
                            
                             <%cookies = request.getCookies();
								String curAdmin = "null";
								if (cookies != null) {
									for (int i = 0; i < cookies.length; i++) {
										Cookie c = cookies[i];
										if (c.getName().equals("dx_usertype")) {
											curAdmin = c.getValue();
											break;
										}
									}
									if (curAdmin.equals("admin")) {%>
										<th width="100"><foint id="opr"></font></th>
									<%}
								}%>
                                      
                            </tr>
                            
                        <s:iterator value ="titbits" var="titbit">
                        <tr>			
                        <td><s:property value="userName"/></td>
                        <td><s:property value="date"/></td>
                        <td>
                        	<a  href="showTitbits?id=${id}">${title}</a> 
                        </td>
                        <%if(curAdmin != null && curAdmin.equals("admin")){ %><td><a  href="deleteTitbits?id=${id}"  onclick="javascript:return deleteTitbits()">删除</a> </td><% }%>
                        </tr>
                        </s:iterator>
                        
                          </table>
                          <div align="center">
                          <br/>
                          <%if(curAdmin != null && curAdmin.equals("admin")){ %>
                                <input type="button" class="button03" id="newTitbits" name="newTitbits" value="" onclick="user_validate('saveTitbits.jsp')" />
                          <% }%>
						  <input type="button" class="button03" id="return" name="return" value="" onclick="window.location.href='displayNews'" />
                          </div></form>
                          </div></div>
           
            <div style="clear: both"></div>
            <%@include file="footer_frame.jsp"%>