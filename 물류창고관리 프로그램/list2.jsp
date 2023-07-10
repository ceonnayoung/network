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
<h2 align= "center"><b>입출고내역조회</b></h2>
<table border=1 align = "center">
	<tr>
		<td>입출고번호</td>
		<td>제품코드</td>
		<td>제품명</td>
		<td>입출고구분</td>
		<td>수량</td>
		<td>거래처</td>
		<td>거래일자</td>
	</tr>
<%
	request.setCharacterEncoding("UTF-8");
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		String sql = "select t_no, io.p_code, p_name, t_type, t_cnt, c_name, t_date " +
					 "from tbl_inout_202002 io, tbl_product pr, TBL_COMPANY_202002 co " +
					 "where io.p_code = pr.p_code and io.c_code = co.c_code " +
					 "order by io.p_code ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String type = rs.getString(4);
			if(rs.getString(4).equals("I")){
				type = "입고";
			}
			else type="출고";
%>		
	<tr align= "center">
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=type %></td>
		<td><%=rs.getInt(5) %></td>
		<td><%=rs.getString(6) %></td>
		<td><%=rs.getString(7) %></td>
	</tr>	

<% 
		}
	} catch(Exception e){
		e.printStackTrace();
	}
%>


</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
