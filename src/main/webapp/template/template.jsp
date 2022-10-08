<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	//index.jsp->/view/indexControl.jsp->template.jsp
	String CONTROL=request.getParameter("CONTROL");
	String PAGENUM=request.getParameter("PAGENUM");
		System.out.println("template.jsp의 CONTROL=>"+CONTROL+",PAGENUM="+PAGENUM);
	
	//왼쪽메뉴->jsp조합
	String left="/module/"+CONTROL+"Left.jsp";//~introllLeft.jsp
	//본문-> /view/intro_01.jsp
	String content="/view/"+CONTROL+"_"+PAGENUM+".jsp";
	System.out.println("left=>"+left+",content=>"+content);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>실질적인 메인 페이지</title>
</head>
<body>
<center>
<table width="800" height="600" border="1" cellpadding="2" cellspacing="0">
 <!-- 상단메뉴(top.jsp) -->
 <tr heigher="50">
 	<td colspan="2">
 		<jsp:include page="/module/top.jsp" flush="false"/>
 	</td>
 </tr>
 <!-- 왼쪽,가운데(본문) -->
 <tr height="500">
 	<td width="150" valign="top">
 		<jsp:include page="<%=left%>" flush="false"/>
 	</td>
 	<td width="650" valign="top">
 		<jsp:include page="<%=content %>" flush="false"/>
 	</td>		
 </tr>
 <!-- 하단부분(bottom.jsp) -->	
 <tr heigher="50">
 	<td colspan="2">
 		<jsp:include page="/module/bottom.jsp" flush="false"/>
 	</td>
 </tr>
 
</table>
</center>
</body>
</html>