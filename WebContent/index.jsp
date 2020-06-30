<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
<%
	List<String> strList = new ArrayList<>();
	strList.add("hoho");
	strList.add("haha");
	
	for(String str:strList){
		out.println(str+"<br>");
	}
%>
</body>
</html>