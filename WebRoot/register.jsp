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
     <script src="http://code.jquery.com/jquery.js"></script>
 <script src="js/bootstrap.js"></script>
  <script type="text/javascript">

function validate_form()
{
if(document.thisForm.userName.value.length==0)
{
alert("用户名不能为空！");
document.thisForm.userName.focus();
return false;
}
if(document.thisForm.userName.value.length>10)
{
alert("用户名长度上限为10！");
document.thisForm.userName.focus();
return false;
}
if(document.thisForm.password.value.length==0)
{
alert("密码不能为空！");
document.thisForm.password.focus();
return false;
}
if(document.thisForm.password.value.length>12)
{
alert("密码长度上线为12！");
document.thisForm.password.focus();
return false;
}
if(document.thisForm.password.value!=document.thisForm.passwordConfirm.value )
{
alert("两次密码输入不一致！");
document.thisForm.password.focus();
return false;
}
}
</script>
</head>
<body>
    <div class="indexmain">
        <div class="main">
            <img class="title" src="img/index2.jpg" alt="" />
            
           
					<div class="content_pos">
            	<div class="row-fluid">
					<div class="span1">
					</div>				
					<div class="span10">
                    	
						
                       <form  name="thisForm" action="register"   method="post" enctype ="multipart/form-data"><br><br><br> 
                              <h2 class="form-signin-heading">用户注册</h2> 
                              <div class="control-group">
                              	<label class="control-label" for="userName">用户名</label><div class="controls"><input type="text" name="userName" class="form-control"><p class="help-block">6~18个字符，可使用字母、数字、下划线</p></div>
                             	<label class="control-label" for="password">密码</label><div class="controls"><input type="password" name="password" class="form-control"><p class="help-block">6~18个字符，区分大小写</p></div>
                            	<label class="control-label" for="password">密码确认</label><div class="controls"><input type="password" name="passwordConfirm" class="form-control"><p class="help-block">请再次填写密码</p></div><br/>
                             	<div class="controls"><button class="btn btn-lg btn-primary " type="submit" onclick="javascript:return validate_form()">注册</button></div>
                             	<br>                            
                             	<div class="controls"><a href="mainn.jsp">已有账户，直接登录</a></div>
                             </div>
                             </form>  
                       
                        <br>
                        <br>
 					</div>
                    
 </div>
   </div>
 

 
          
           
            <div style="clear: both"></div>