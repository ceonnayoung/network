<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String artist_id = request.getParameter("artist_id");
		String artist_name = request.getParameter("artist_name");
		String date1 = request.getParameter("date1");
		String date2 = request.getParameter("date2");
		if(date2.length() < 2) date2="0" + date2;
		String date3 = request.getParameter("date3");
		if(date3.length()<2) date3 = "0" + date3;
		String birth = date1 + date2 + date3;
		String talent = request.getParameter("gender");
		String  agency = request.getParameter("agency");
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");		
			String sql = "insert into tbl_artist_201905 values(?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, artist_id);
			pstmt.setString(2, artist_name);
			pstmt.setString(3, birth);
			pstmt.setString(4, gender);
			pstmt.setString(5, talent);
			pstmt.setString(6, agency);
			pstmt.executeUpdate();
			%>
			<jsp:forward page="insert.jsp"></jsp:forward>
		<%
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		%>
		
	
</body>
</html>
