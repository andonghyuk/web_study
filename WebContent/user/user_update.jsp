<%@page import="common.Connector"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");

	Connection con = Connector.getConnection();
	String sql = "SELECT * FROM user where num=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setInt(1,Integer.parseInt(num));
	ResultSet rs = ps.executeQuery();
	if(rs.next()){	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user update</title>
</head>
<body>
<form action="/web/user/user_update_ok.jsp">

ID : <input type="text" name="id" value="<%=rs.getString("id")%>"> <br>
이름 : <input type="text" name="name" value="<%=rs.getString("name") %>"> <br>
<input type="hidden" name="num" value="<%=rs.getString("num") %>">
<button>수정</button>
</form>
</body>
</html>

<%
}else{
%>
<script>
	location.back();
</script>
<%
}
%>
