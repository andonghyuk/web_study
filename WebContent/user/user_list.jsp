<%@page import="common.Connector"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection con = Connector.getConnection();
Statement stmt = con.createStatement();
String sql = "SELECT * FROM user";
ResultSet rs = stmt.executeQuery(sql);
%>


<a href = "/web/user/user_insert.jsp"><button>회원정보입력</button></a>
<form action="/web/user/user_delete_ok.jsp">
<table border="1">
	<tr>
		<th><input type="checkbox" id="chk_all" onclick="checkAll()"></th>
		<th>번호</th>
		<th>이름</th>
		<th>아이디</th>
	</tr>


<%
while(rs.next()){
%> 
	<tr>
		<td><input type="checkbox" name="chk" value="<%=rs.getInt("num")%>"></td>
		<td><a href="/web/user/user_update.jsp?num=<%=rs.getInt("num")%>"><%=rs.getInt("num")%></a></td>
		<td><a href="/web/user/user_update.jsp?num=<%=rs.getInt("num")%>"><%=rs.getString("name")%></a></td>
		<td><a href="/web/user/user_update.jsp?num=<%=rs.getInt("num")%>"><%=rs.getString("id")%></a></td>
	</tr>
<%
}
%>
</table>
<button>삭제</button>

</form>

<script>
	function checkAll(){
		var obj = document.getElementById('chk_all');
		var objs = document.getElementsByName('chk');
		for(var i = 0 ; i < objs.length;i++){
			objs[i].checked = obj.checked;
		}
	}
</script>

</body>
</html>