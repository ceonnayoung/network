<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
	
	String date = request.getParameter("date");
	String number = request.getParameter("number");
	String area = request.getParameter("area");
	int price = Integer.parseInt("price");
	int className = Integer.parseInt(request.getParameter("className")) / 1000;
	try {
		String sql = "insert into tbl_class_202201 values(?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, date);
		pstmt.setString(2, number);
		pstmt.setString(3, area);
		pstmt.setInt(4, price);
		pstmt.setString(5, Integer.toString(className));
		pstmt.executeQuery();
		
	}catch(Exception e) {
		e.printStackTrace();
	}
%>

<jsp:forward page="insert.jsp" />
