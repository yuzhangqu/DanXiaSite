<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page import="com.dx.servlet.Counter"%>
<%@ page import="com.dx.bean.TbPost"%>
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
        $('#replyNum').text($.i18n.prop('replyNum'));
        $('#return').val($.i18n.prop('U_return'));
        $('#newPost').val($.i18n.prop('T_post'));
        $('#bbsWelcome').text($.i18n.prop('bbsWelcome'));
     }
    });
    
});
        function posts()
        {
           var myName="<%=session.getAttribute("posts")%>"; 
		   if(myName == "null")
		    {
           window.location.href="listPosts.action";
           }
         }
         
        function remove()
	    {
		    <%session.removeAttribute("posts");%>
		}
		
		function init(){
		   posts();
		   remove();
		}
		
		function deletePost(){
          var d = window.confirm("你确定要删除该贴？");
           if(d){
             return true;
           }
           else{
             return false;
           }
       }
       
       function user_validate(webLink){
		var userName = "<%=session.getAttribute("userName")%>";
		if (userName == "null") {
			alert("请先登录本系统方可进行操作！");
			return false;
		} else {
			window.location.href = webLink;
		}
		}
       
           </script>
 
</head>

<body onload="init()" >
    <div class="indexmain">
        <div class="main">
            <img class="title" src="img/index2.jpg" alt="" />
            
            
           <br>
           <br>
					<div class="content_long">
						<div align="center"><h1 id="bbsWelcome"></h1></div>
					<div class="content_pos">
						
                        <form name="secondForm" action="searchNewsContent"  method ="post">
                          <table width="600" border="1" cellpadding="5" align="center">
                          
                           <tr>
                           
                            <th width="500"><font id="title"></font></th>
                            
                            <th width="150"><font id="uname"></font></th>
                        
                            <th width="150"><font id="date"></font></th>
                        
                            <th width="100"><font id="replyNum"></font></th>
                            
                             <%String name = (String )session.getAttribute("type");                           
                             if(name != null && name.equals("admin")){ %>
                                  <th width="100"><font id="opr"></font></th>
                            <% }%>
                                      
                            </tr>
                            
                        <s:iterator value = "posts" var="posts">
                        <tr>	
                        <td><a  href="showPost.action?id=<s:property value="postId"/>"><s:property value="title"/></a> </td>		
                        <td><s:property value="author"/></td>
                        <td><s:property value="postTime"/></td>
                        <td><s:property value="replyNum"/></td>
                        
                         <%String tname = (String )session.getAttribute("type");                            
                             if(tname != null && tname.equals("admin")){ %><td><a  href="deletePost.action?id=<s:property value="postId"/>"  onclick="javascript:return deletePost()">删除</a> </td><% }%>
                        			<!---->
                        </tr>
                        </s:iterator>
                        
                          </table>
                          <div align="center">
                          <br/>
                          <%if(name != null){ %>
                                  <input type="button" class="button03" id="newPost" name="newPost" value="" onclick="user_validate('savePost.jsp')" />
                            <% }%>
                          
						  <input type="button" class="button03" id="return" name="return" value="" onclick="window.location.href='mainn.jsp'" />
                          </div></form>
                          </div></div>
           
            <div style="clear: both"></div>
            <%@include file="footer_frame.jsp"%>