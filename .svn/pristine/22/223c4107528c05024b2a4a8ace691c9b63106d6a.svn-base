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
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.i18n.properties-1.0.9.js"></script>
<script src="js/bootstrap.js"></script>
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
        //alert("1");
        $('#name').text($.i18n.prop('S_cname'));
        $('#tnameCurrent').text($.i18n.prop('S_cname'));
        $('#pro').text($.i18n.prop('S_province'));
        $('#tprovince').text($.i18n.prop('S_province'));
        $('#city').text($.i18n.prop('S_city'));
        $('#tcity1').text($.i18n.prop('S_city'));
        $('#inst').text($.i18n.prop('S_institution'));
        $('#tinstitution').text($.i18n.prop('S_institution'));
        $('#contact').text($.i18n.prop('S_contact'));
        $('#tcontact1').text($.i18n.prop('S_contact'));
        $('#fuzzy').text($.i18n.prop('S_fuzzy'));
        $('#query').text($.i18n.prop('S_query'));
        $('#return').text($.i18n.prop('U_return'));
        $('#tbtn_query').text($.i18n.prop('S_tbtn_query'));
        $('#back').val($.i18n.prop('S_back'));
        $('#sresult').text($.i18n.prop('S_result'));
       
     }
    });
    
});

function resetPage(e) {
	e.preventDefault();
	document.getElementById("page").value = 1;
	document.getElementById("firstForm").submit();
}

function minusPage() {
	document.getElementById("page").value = parseInt(document.getElementById("page").value) - 1;
	document.getElementById("firstForm").submit();
}

function addPage() {
	document.getElementById("page").value = parseInt(document.getElementById("page").value) + 1;
	document.getElementById("firstForm").submit();
}
</script>

</head>
<body>
	<div class="indexmain" text-align:center>
		<div class="main" align="center">
			<img class="title" src="img/index2.jpg" alt="" />


			<div class="content_long">
				<div class="content_pos">
					<h3 class="form-signin-heading">
						<font id="fuzzy"></font>
					</h3>

					<form class="form-signin" name="firstForm"
						action="searchGeneralInfo" method="post" id="firstForm">
						<div class="controls">
						<input id="page" name="page" value="${page}" style="display:none"/>
							
							              <font id="tnameCurrent"></font><input type="text" id="nameCurrent" name="nameCurrent" value="${nameCurrent}"
								style="width:100px" /> 
								
								<font id = "tprovince"></font><input type="text" id="province"
								name="province" value="${province}" style="width:100px" />
								
								<font id="tcity1"></font><input type="text"
								id="city1" name="city" value="${city}" style="width:100px" /> 
								
								<font id="tinstitution"></font><input
								type="text" id="institution" name="institution" value="${institution}"
								style="width:100px" /> 
								
								<font id="tcontact1"></font><input type="text" id="contact1"
								name="contact" value="${contact}" style="width:100px" />

						</div>
						<div class="control-group">
							<div class="controls">

								<br/>

								<button class="button03" type="submit" id="btn_query" onclick="resetPage(event);"><font id="tbtn_query"></font></button>

								<input id="back" type="button" class="button03" value="返回"
									onclick="window.location.href='mainn.jsp'" />
							</div>
						</div>
					</form>
					<br>
					<s:label id="sresult"></s:label>

					<form name="secondForm" action="searchDetailInfo" method="post">
						<table width="600" border="1" cellpadding="5" align="center">

							<tr>
                        
								<th width="150" height="50"><span id="name"></span>
								</th>

								<th width="150" height="50"><font id="pro"></font>
								</th>

								<th width="150" height="50"><font id="city"></font>
								</th>

								<th width="300" height="50"><font id="inst"></font>
								</th>

								<th width="200" height="50"><font id="contact"></font>
								</th>

							</tr>

							<s:iterator value="info">
								<tr>
									<td height="50"><a
										href="infoDisplay.action?id=<s:property value="basicId"/>"><s:property
												value="nameCurrent" />
									</td>
									<td height="50"><s:property value="regionProvince" /></td>
									<td height="50"><s:property value="regionCity" /></td>
									<td height="50"><s:property value="agencyName" /></td>
									<td height="50"><s:property value="agencyLinkman" /></td>
								</tr>
							</s:iterator>

						</table>
					</form>
				</div>
			</div>
			<br/> <input type="button" class="button03" name="prevPage" value="上一页"
				onclick="minusPage();" /> <input type="button" class="button03"
				name="nextPage" value="下一页" onclick="addPage();" />
			
			<div style="clear: both"></div>
			<%@include file="footer_frame.jsp"%>