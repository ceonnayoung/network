<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	String t_no = request.getParameter("t_no");
	String p_code = request.getParameter("p_code");
	String t_type = request.getParameter("t_type");
	String t_cnt = request.getParameter("t_cnt");
	String t_date = request.getParameter("t_date");
	String c_name = request.getParameter("c_name");
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		String sql = "";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, t_no);
		pstmt.setString(2, p_code);
		pstmt.setString(3, t_type);
		pstmt.setString(4, t_cnt);
		pstmt.setString(5, t_date);
		pstmt.setString(6, c_name);
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>
<jsp:forward page="index.jsp"></jsp:forward>
