<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	//index.jsp->/view/indexControl.jsp->template.jsp
	String CONTROL=request.getParameter("CONTROL");
	String PAGENUM=request.getParameter("PAGENUM");
		System.out.println("template.jsp�� CONTROL=>"+CONTROL+",PAGENUM="+PAGENUM);
	
	//���ʸ޴�->jsp����
	String left="/module/"+CONTROL+"Left.jsp";//~introllLeft.jsp
	//����-> /view/intro_01.jsp
	String content="/view/"+CONTROL+"_"+PAGENUM+".jsp";
	System.out.println("left=>"+left+",content=>"+content);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>�������� ���� ������</title>
</head>
<body>
<center>
<table width="800" height="600" border="1" cellpadding="2" cellspacing="0">
 <!-- ��ܸ޴�(top.jsp) -->
 <tr heigher="50">
 	<td colspan="2">
 		<jsp:include page="/module/top.jsp" flush="false"/>
 	</td>
 </tr>
 <!-- ����,���(����) -->
 <tr height="500">
 	<td width="150" valign="top">
 		<jsp:include page="<%=left%>" flush="false"/>
 	</td>
 	<td width="650" valign="top">
 		<jsp:include page="<%=content %>" flush="false"/>
 	</td>		
 </tr>
 <!-- �ϴܺκ�(bottom.jsp) -->	
 <tr heigher="50">
 	<td colspan="2">
 		<jsp:include page="/module/bottom.jsp" flush="false"/>
 	</td>
 </tr>
 
</table>
</center>
</body>
</html>