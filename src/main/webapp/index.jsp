<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ���޿�</title>
</head><!--  intro_01.jsp(�׸�_���ü���_���ü���2.jsp)-->
<body>
<!-- /view/indexControl.jsp?�Ű�������(CONTROL)=�����Ұ�&�Ű�����2=��& -->
	<jsp:forward page="/view/indexControl.jsp">
		<jsp:param name="CONTROL" value="intro"/>
		<jsp:param name="PAGENUM" value="01"/>
	</jsp:forward>
</body>
</html>