<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>페이지 전달용</title>
</head><!--  intro_01.jsp(항목_관련순번_관련순번2.jsp)-->
<body>
<!-- /view/indexControl.jsp?매개변수명(CONTROL)=전달할값&매개변수2=값& -->
	<jsp:forward page="/view/indexControl.jsp">
		<jsp:param name="CONTROL" value="intro"/>
		<jsp:param name="PAGENUM" value="01"/>
	</jsp:forward>
</body>
</html>