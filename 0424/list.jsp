<%@ page language="java" contentType="text/html; charset= utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2><b>제품조회</b></h2>
<form>
	<table border=1>
		<tr>
			<td>제품코드</td>
			<td>제품명</td>
			<td>사이즈</td>
			<td>매입단가</td>
			<td>출고단가</td>
		</tr>
<%
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe",
		"system","1234");
		String sql = "Select * from tbl_product_202002";
		PreparedStatement ps = con.prepareStatement(sql);
	    ResultSet rs = ps.executeQuery();
		while(rs.next()) {
%>
		<tr>
			<td><%=rs.getString("p_code") %></td>	
			<td><%=rs.getString("p_name") %></td>	
			<td><%=rs.getInt("p_size") %></td>	
			<td align="right"><%=rs.getInt("p_incost") %></td>	
			<td align="right"><%=rs.getInt("p_outcost") %> </td>
		</tr>
		<% 	
	}
} catch(Exception e) {
	e.printStackTrace();
}
%>
	</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
