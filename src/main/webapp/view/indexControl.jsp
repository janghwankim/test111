<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String CONTROL=null;//������ ��������(=�ҷ��� ���ϸ�)
	String PAGENUM=null;//��������ȣ

	try{
		CONTROL=request.getParameter("CONTROL");
		PAGENUM=request.getParameter("PAGENUM");
		System.out.println("indexControl.jsp�� CONTROL=>"+CONTROL+",PAGENUM="+PAGENUM);
		//���࿡ �߰��� ���� ���� ���ϴ� ��Ȳ�� �߻�=>�⺻���� ���Ϻҷ�����
		if(CONTROL.equals(null)) {
			CONTROL="intro";
		}
		if(PAGENUM.equals(null)) {
			PAGENUM="01";
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>    
    
<jsp:forward page="/template/template.jsp">
		<jsp:param name="CONTROL" value="<%=CONTROL %>"/>
		<jsp:param name="PAGENUM" value="<%=PAGENUM %>"/>
	</jsp:forward>