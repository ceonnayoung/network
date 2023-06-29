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
<h2><b>강사매출현황</b></h2>
<table border=1>
	<tr>
		<td>강사코드</td>
		<td>강의명</td>
		<td>강사명</td>
		<td>총매출</td>
	</tr>
	
	<%
		request.setCharacterEncoding("UTF-8");
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
			String sql = "select te.teacher_code, te.class_name, te.teacher_name, sum(tutition) "+
					"from tbl_teacher_202201 te, tbl_class_202201 cl "+
					"where te.teacher_code = cl.teacher_code "+
					"group by te.teacher_code , te.class_name, te.teacher_name ";

			Statement stmt = con.createStatement();
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery(sql);
					
			while(rs.next()) {
				String sales = rs.getString(4);
				sales = sales.substring(0, 3) + "," + sales.substring(3, 6);
		
	%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=sales %></td>
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
