<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>
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
	request.setCharacterEncoding("UTF-8");
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		String sql = "select * from tbl_product ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String price = rs.getString(4);
			price = "￦" + price.substring(0, 1) + "," + price.substring(1, 4);
			
			String price2 = rs.getString(5);
			price2 = "￦" + price2.substring(0, 1) + "," + price2.substring(1, 4);
%>		
	<tr align="center">
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getInt(3) %></td>
		<td align = "right"><%=price %></td>
		<td align = "right"><%=price2 %></td>
	</tr>	

<% 
		}
	} catch(Exception e){
		e.printStackTrace();
	}
%>


</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
