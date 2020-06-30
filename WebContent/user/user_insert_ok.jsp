<%@page import="java.sql.*"%>
<%@page import="common.Connector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    
<%
String name = request.getParameter("name");
String id = request.getParameter("id");
Connection conn = Connector.getConnection();
String sql = "insert into user(name, id) ";

sql += "values(?,?)";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, id);
int result = ps.executeUpdate();
%>

<script>
	location.href="/web/user/user_list.jsp";
</script>