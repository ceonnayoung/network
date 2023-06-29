<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTFß8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<form>
<h2><b>강사조회</b></h2>
<table border=1>
	<tr>
		<td>강사코드</td>
		<td>강사명</td>
		<td>강의명</td>
		<td>수강료</td>
		<td>강사자격취득일</td>
	</tr>
	
	<%
		request.setCharacterEncoding("UTF-8");
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
			String sql = "select * from tbl_teacher_202201 ";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery(sql);
			
			while(rs.next()) {
			String date = rs.getString(5);
			date = date.substring(0, 4) + "년" + date.substring(4, 6) + "월" + date.substring(6, 8) + "일";
			
			String price = Integer.toString(rs.getInt(4));
			if(price.length() == 6)
				price = "\\" + price.substring(0,3 ) + "," + price.substring(3, 6);
			else price = "\\" + price.substring(0, 2) + "," + price.substring(2, 5);
		
	%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=price %></td>
		<td><%=date %></td>
	</tr>
	
	<%
			}
	}catch(Exception e) {
		e.printStackTrace();
	}
	%>

</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
